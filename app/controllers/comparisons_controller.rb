class ComparisonsController < ApplicationController
	def step1
  		#GET /comparisons/new
		@comparison = Comparison.new
  	end
	def step3
	  	@comparison = Comparison.find(session[:compid])
	  	@lightings = Lighting.all
	  	@bulbs = Bulb.all
  	end
  	def result
  		weekdays = 5
  		monthweeks = 4
  		yearmonths = 12
  		totaldays = weekdays * monthweeks * yearmonths
  		energyprice = 0.098
  		annualcurrentcost = 0
  		annualledcost = 0
  		installationcost = 0
  		annualsave = 0
  		monthlysave = 0
  		percentsave = 0
  		monthlyamortization = 0
  		bulbs = Bulb.all

  		@comparison = Comparison.find(session[:compid])
  		lightings = Lighting.all.where("comparison_id LIKE ?", @comparison.id ).to_a
  		lightings.each do |l|
  			b = bulbs.find(l.bulb_id)
  			annualcurrentcost = (b.kindkw * l.quantity * l.hoursday * totaldays * energyprice) + annualcurrentcost
  			annualledcost = annualledcost + (b.ledequivalencekw * l.quantity * l.hoursday * totaldays * energyprice)
  			installationcost = installationcost + (b.ledprice * l.quantity)
  		end

  		annualsave = ((annualcurrentcost - annualledcost)*100).round / 100.0
  		monthlysave = ((annualsave/12)*100).round / 100.0
  		percentsave = (((annualsave/annualcurrentcost)*100)*100).round / 100.0
  		installationcost = ((installationcost)*100).round / 100.0
  		monthlyamortization = installationcost / monthlysave

  		@comparison.update(annualsave: annualsave, monthlysave: monthlysave, percentsave: percentsave, annualcurrentcost: annualcurrentcost, installationcost: installationcost, monthlyamortization: monthlyamortization )
  		if @comparison.save
  			UserMailer.comparison_confirmation(@comparison).deliver
  		else
  			render '/paso3'
  		end
  	end

  	def downloadpdf
	    @comparison = Comparison.find(params[:id])
	    respond_to do |format|
	      format.html
	      format.pdf do
	        #pdf = ComparisonPdf.new(@comparison, view_context)
	        pdf = ComparisonPdf.new(@comparison)
	        send_data pdf.render, filename: 
	        "ahorro_led_#{@comparison.refcode}.pdf",
	        type: "application/pdf"
	      end
  		end
  	end
  	def showpdf
  		@comparison = Comparison.find(params[:id])
	    respond_to do |format|
	      format.html
	      format.pdf do
	        #pdf = ComparisonPdf.new(@comparison, view_context)
	        pdf = ComparisonPdf.new(@comparison)
	        send_data pdf.render, filename: 
	        "ahorro_led_#{@comparison.refcode}.pdf",
	        type: "application/pdf", disposition: "inline"
	      end
  		end
  	end
  	
	def create
		@cmps = Comparison.all
		
		if params[:getcomparison]
			@cmps.where("refcode LIKE ?", params[:comparison][:refcode]).to_a.each do |c|
			@id = c.id
			end
			session[:compid] = @id
			redirect_to '/resultado'
		elsif params[:continue]
			ref = ""
			exist = true

			while exist==false || ref=="" do
				ref = rand("".center(8,'9').to_i).to_s.center(8, rand(9).to_s)
				@cmps.each do |comp|
					if comp.refcode == ref.to_i
						exist = false
					end
				end
			end
			@comparison = Comparison.new(email: params[:comparison][:email], postalcode: params[:comparison][:postalcode], telephone: params[:comparison][:telephone], refcode: ref)
		
			if @comparison.save
				session[:compid] = @comparison.id
				redirect_to '/paso2'
			else
				render :new
			end
		end		
	end
	#def edit
	#	@comparison = Comparison.find(params[:id])
	#	respond_with(@comparison)
	#end
	def update
		@comparison = Comparison.find(params[:id])

		if @comparison.update(email: params[:comparison][:email], postalcode: params[:comparison][:postalcode], telephone: params[:comparison][:telephone])
			redirect_to '/resultado'
		else
			render '/paso2'
		end
	end
end
