ActiveAdmin.register Bulb do
  menu label: "Bombillas"

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

  index :title => "Bombillas" do
    #column :id
    column "Tipo de bombilla", :kind
    column "KW", :kindkw
    column "Equivalencia en led", :ledequivalence
    column "KW led", :ledequivalencekw
    column "Precio led", :ledprice
    actions
  end

end
