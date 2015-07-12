class LightingsController < ApplicationController

	def step2
		@bulbs = Bulb.all
		@comparison = Comparison.find(session[:compid])
		@lightings = Lighting.all
		@lighting = Lighting.new
  	end
	#POST /lightings
	def create
		@lighting = Lighting.new(bulb_id: params[:lighting][:bulb_id], quantity: params[:lighting][:quantity], hoursday: params[:lighting][:hoursday], comparison_id: session[:compid])
		if @lighting.save
			if params[:continue]
				redirect_to '/paso3'
			else
				redirect_to '/paso2'
			end
		else
			render :new
		end
		
	end

	def destroy
		@lighting = Lighting.find(params[:id])
		@lighting.destroy
		redirect_to '/paso2'
	end
end