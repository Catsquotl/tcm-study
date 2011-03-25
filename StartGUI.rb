require 'green_shoes'
require_relative './orgaan'
include OrgaanGui

Shoes.app title:"Shu Ha Ri",width: 1280, height: 720 do
  background khaki
	@m=[]
  
  fwin1 = flow width: 0.5, height: 0.3 do
    para "In onderstaande lijst kunt u een keuze maken 
    uit de verschillende orgaansystemen van het menselijk lichaam",align:"center"
    list = Dir.glob("./data/*.yml").sort
    list.each do|x|
      s = x[7...-4]
      @m.push(s)
    end
    list = list_box :items =>@m
    list.change{|choice|
      @fwin2.clear { dat = File.open"./data/#{choice.text}.yml",'r'
        a = Psych.load dat
        dat.close
        a.punten.each {|e|
          button e.afk, :height =>30, :width =>50  do
            @fwin4.clear{ stack do
              para strong("Afkorting:"),"#{e.afk}\n",
              strong("Ch.naam\t:"),"#{e.chname}\n",
              strong("Naam\t:")," #{e.name}\n",
              strong("Locatie\t:")," #{e.locatie}\n",
              strong("Aard\t:")," #{e.aard}\n",
              strong("Actie\t:")," #{e.actie}\n"
            end
            }
          end
        @fwin3.clear {
         a.functies.each do |k,v|
         para strong k
         para v
         end
        }
        }
      }
    }
  end
	
  @fwin2 = flow width: 0.5,height: 0.3 do
  end

  @fwin3 = flow width: 0.5,height: 0.7 do
  end

  @fwin4 = flow width: 0.5,height: 0.7 do
  end
end

