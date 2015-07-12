# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
	bulbs = Bulb.create( kind: "Downlight de 2 lámparas de 26w", 			 kindkw: '0.052', ledequivalence: "Downlight circular empotrable extraplano 18w. Luz cálida", 	ledequivalencekw: '0.018', ledprice: '19.90')
	bulbs = Bulb.create( kind: "Downlight superficie de 2 lámparas de 26w",  kindkw: '0.052', ledequivalence: "Downlight circular de sup extraplano 18w. Luz cálida", 		ledequivalencekw: '0.018', ledprice: '29.79')
	bulbs = Bulb.create( kind: "Lámpara incandescente de 40w", 			     kindkw: '0.040', ledequivalence: "Lámpara estándar 5w E-27. Luz cálida", 						ledequivalencekw: '0.005', ledprice: '4.50')
	bulbs = Bulb.create( kind: "Lámpara incandescente de 50w", 			     kindkw: '0.050', ledequivalence: "Lámpara estándar 7w E-27. Luz cálida", 						ledequivalencekw: '0.007', ledprice: '5.67')
	bulbs = Bulb.create( kind: "Lámpara incandescente de 60w", 			     kindkw: '0.060', ledequivalence: "Lámpara estándar 10w E-27. Luz cálida", 						ledequivalencekw: '0.010', ledprice: '7.53')
	bulbs = Bulb.create( kind: "Lámpara dicroica 40w GU10", 				 kindkw: '0.040', ledequivalence: "Lámpara dicroica 6w GU10", 									ledequivalencekw: '0.006', ledprice: '5.43')
	bulbs = Bulb.create( kind: "Lámpara de vela incandescente 25w", 		 kindkw: '0.025', ledequivalence: "Lámpara de vela opal 7w E-14", 								ledequivalencekw: '0.007', ledprice: '5.34')
	bulbs = Bulb.create( kind: "Tubo fluorescente 18w 600 mm", 			     kindkw: '0.018', ledequivalence: "Tubo T-8 10w 600 mm", 										ledequivalencekw: '0.010', ledprice: '9.08')
	bulbs = Bulb.create( kind: "Tubo fluorescente 36w 1200 mm", 			 kindkw: '0.036', ledequivalence: "Tubo T-8 18w 1200 mm. Luz fría", 							ledequivalencekw: '0.018', ledprice: '11.60')
	bulbs = Bulb.create( kind: "Tubo fluorescente 56w 1500 mm", 			 kindkw: '0.056', ledequivalence: "Tubo T-8 25w 1500 mm. Luz fría", 							ledequivalencekw: '0.025', ledprice: '16.30')
	bulbs = Bulb.create( kind: "4 tubos fluorescentes de 18w 600 mm", 		 kindkw: '0.072', ledequivalence: "Panel opal 600x600 mm 40w", 									ledequivalencekw: '0.040', ledprice: '78.26')
