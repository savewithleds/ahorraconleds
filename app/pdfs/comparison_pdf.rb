class ComparisonPdf < Prawn::Document

	def initialize(comparison)
	#def initialize(comparison, view)
	    super()
	    @comparison = comparison
	    #@view = view
	    logo
	    thanks_message
    	save
      regards_message
	end

	def logo
  		logopath =  "#{Rails.root}/app/assets/images/logo.png"
  		image logopath, :width => 197, :height => 91
  		move_down 10
	end


  def thanks_message
    move_down 80
    text "Estimado usuario,"
    move_down 15
    text "Gracias por confiar en Integra energía, esperamos que esta comparativa le sea de utilidad.",
    :indent_paragraphs => 40, :size => 13
    text "Comparativa correspondiente al número de referencia: #{@comparison.refcode}", :size => 13, style:  :bold
  end

  def save
    move_down 40
    text "¡¡Este es tu ahorro!!"
    move_down 20
    text "Ahorro anual en €: #{@comparison.annualsave}", :size => 13
    move_down 10
    text "Porcentaje de ahorro: #{@comparison.percentsave} %", :size => 13
    move_down 10
    text "Ahorro mensual en €: #{@comparison.monthlysave}", :size => 13
    move_down 10
    text "Coste anual actual en €: #{@comparison.annualcurrentcost}", :size => 13
    move_down 10
    text "Coste de instalación en €: #{@comparison.installationcost}", :size => 13
    move_down 10
	text "Plazo de amortización en meses: #{@comparison.monthlyamortization}", :size => 13
  end
  def regards_message
    move_down 50
    text "Muchas gracias," ,:indent_paragraphs => 400
    move_down 6
    text "Integra Energía",
    :indent_paragraphs => 370, :size => 14, style:  :bold
  end

end