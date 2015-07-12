ActiveAdmin.register Comparison do
  menu label: "Comparativas"
  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # permit_params :list, :of, :attributes, :on, :model
  #
  # or
  #
  # permit_params do
  #   permitted = [:permitted, :attributes]
  #   permitted << :other if resource.something?
  #   permitted
  # end
  index  :title => "Comparativas" do
    #column :id
    column "Email", :email
    column "Código Postal", :postalcode

    column "Provincia" do |comparison|
      if /^01/.match("#{comparison.postalcode}")
        "Álaba"
      elsif /^02/.match("#{comparison.postalcode}")
        "Albacete"
      elsif /^03/.match("#{comparison.postalcode}")
        "Alicante"
      elsif /^04/.match("#{comparison.postalcode}")
        "Almería"
      elsif /^05/.match("#{comparison.postalcode}")
        "Ávila"
      elsif /^06/.match("#{comparison.postalcode}")
        "Badajoz"
      elsif /^07/.match("#{comparison.postalcode}")
        "Islas Baleares"
      elsif /^08/.match("#{comparison.postalcode}")
        "Barcelona"
      elsif /^09/.match("#{comparison.postalcode}")
        "Burgos"
      elsif /^10/.match("#{comparison.postalcode}")
        "Cáceres"
      elsif /^11/.match("#{comparison.postalcode}")
        "Cádiz"
      elsif /^12/.match("#{comparison.postalcode}")
        "Castellón"
      elsif /^13/.match("#{comparison.postalcode}")
        "Ciudad Real"
      elsif /^14/.match("#{comparison.postalcode}")
        "Córdoba"
      elsif /^15/.match("#{comparison.postalcode}")
        "Coruña"
      elsif /^16/.match("#{comparison.postalcode}")
        "Cuenca"
      elsif /^17/.match("#{comparison.postalcode}")
        "Girona"
      elsif /^18/.match("#{comparison.postalcode}")
        "Granada" 
      elsif /^19/.match("#{comparison.postalcode}")
        "Guadalajara" 
      elsif /^20/.match("#{comparison.postalcode}")
        "Guipúzcoa" 
      elsif /^21/.match("#{comparison.postalcode}")
        "Huelva"
      elsif /^22/.match("#{comparison.postalcode}")
        "Huesca"
      elsif /^23/.match("#{comparison.postalcode}")
        "Jaén"
      elsif /^24/.match("#{comparison.postalcode}")
        "León"  
      elsif /^25/.match("#{comparison.postalcode}")
        "Lleida"
      elsif /^26/.match("#{comparison.postalcode}")
        "La Rioja"
      elsif /^27/.match("#{comparison.postalcode}")
        "Lugo"
      elsif /^28/.match("#{comparison.postalcode}")
        "Madrid"
      elsif /^29/.match("#{comparison.postalcode}")
        "Málaga"
      elsif /^30/.match("#{comparison.postalcode}")
        "Murcia"
      elsif /^31/.match("#{comparison.postalcode}")
        "Navarra"
      elsif /^32/.match("#{comparison.postalcode}")
        "Ourense"
      elsif /^33/.match("#{comparison.postalcode}")
        "Asturias"
      elsif /^34/.match("#{comparison.postalcode}")
        "Palencia"
      elsif /^35/.match("#{comparison.postalcode}")
        "Las Palmas"
      elsif /^36/.match("#{comparison.postalcode}")
        "Pontevedra"
      elsif /^37/.match("#{comparison.postalcode}")
        "Salamanca"
      elsif /^38/.match("#{comparison.postalcode}")
        "S.C. Tenerife"
      elsif /^39/.match("#{comparison.postalcode}")
        "Cantabria"
      elsif /^40/.match("#{comparison.postalcode}")
        "Segovia"
      elsif /^41/.match("#{comparison.postalcode}")
        "Sevilla"
      elsif /^42/.match("#{comparison.postalcode}")
        "Soria"
      elsif /^43/.match("#{comparison.postalcode}")
        "Tarragona"
      elsif /^44/.match("#{comparison.postalcode}")
        "Teruel"
      elsif /^45/.match("#{comparison.postalcode}")
        "Toledo"
      elsif /^46/.match("#{comparison.postalcode}")
        "Valencia"
      elsif /^47/.match("#{comparison.postalcode}")
        "Valladolid"
      elsif /^48/.match("#{comparison.postalcode}")
        "Bizkaia"
      elsif /^49/.match("#{comparison.postalcode}")
        "Zamora"
      elsif /^50/.match("#{comparison.postalcode}")
        "Zaragoza"
      elsif /^51/.match("#{comparison.postalcode}")
        "Ceuta"
      elsif /^52/.match("#{comparison.postalcode}")
        "Melilla"
      end
    end

    column "Teléfono", :telephone
    #column "Código de referencia", :refcode
    column "Ahorro anual", :sortable => :annualsave do |comparison|
        "#{comparison.annualsave} €"
    end
    #column "Porcentaje de ahorro", :percentsave
    #column "Ahorro mensual", :sortable => :monthlysave do |comparison|
     # "#{comparison.monthlysave} €"
    #end
    #column "Coste anual actual", :annualcurrentcost
    #column "Coste de istalación", :installationcost
    #column "Tiempo de amortización(meses)", :monthlyamortization
    #actions
    column "Ver resumen" do |comparison|
      link_to "#{comparison.refcode}", mostrarpdf_path(:id => comparison.id, :format => "pdf")
    end
    column "Descargar" do |comparison|
      link_to "#{comparison.refcode}.pdf", descargarpdf_path(:id => comparison.id, :format => "pdf")
    end
  end
end

     