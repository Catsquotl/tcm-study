require 'green_shoes'
require './zangfu'
Shoes.app title:"Shu Ha Ri", width: 1024, height: 768 do
	
fwin1 = flow width: 0.5, height: 0.3 do
	background khaki
	list = Dir.glob("./data/*.csv")
	list.each do|x| 
		para link("#{x}"){@fwin2.clear {a = ZangFu.new
			a.set_punten(x)
				a.punten.each {|e|
					button e.afk, :height =>30, :width =>50  do
					@fwin4.clear{ para strong("Afkorting:"),"#{e.afk}\n",
					strong("Naam\t:")," #{e.name}\n",
					strong("Locatie\t:")," #{e.locatie}\n",
					strong("Aard\t:")," #{e.aard}\n",
					strong("Actie\t:")," #{e.actie}\n"}
					end
				}
			
		}}
	end
	end
	
@fwin2 = flow width: 0.5,height: 0.3 do
end
    



    

@fwin3 = flow width: 0.5,height: 0.7 do
	para "ook zoiets"
end

@fwin4 = flow width: 0.5,height: 0.7 do
	para "blabla"
end
end
