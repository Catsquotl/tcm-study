require 'green_shoes'
require_relative './orgaan'
Shoes.app title:"Shu Ha Ri",width: 1280, height: 720 do
  background khaki
	@m=[]
  
  fwin1 = flow width: 0.5, height: 0.3 do
    para "In onderstaande lijst kunt u een keuze maken 
    uit de verschillende orgaansystemen van het menselijk lichaam",align:"center"
    list = Dir.glob("./data/*.csv").sort
    list.each do|x|
      s = x[7...-4]
      @m.push(s)
    end
    list = list_box :items =>@m,align:"center"
    list.choose"#{@m[10]}"
    list.change{|choice|
      @fwin2.clear {a = Orgaan.new "./data/#{choice.text}.csv"
      a.punten.each {|e|
        button e.afk, :height =>30, :width =>50  do
          @fwin4.clear{ stack do
            para strong("Afkorting:")," #{e.afk}\n",
            strong("Ch.naam\t:")," #{e.chname}\n",
            strong("Naam\t:")," #{e.name}\n",
            strong("Locatie\t:")," #{e.locatie}\n",
            strong("Aard\t:")," #{e.aard}\n",
            strong("Actie\t:")," #{e.actie}\n"
            end
            }
        end
      }
      @fwin3.clear { stack do
        funckey = edit_box
        funcval = edit_box
        button "go" do
        a.write_func funckey.text,funcval.text
        end
        button "save" do
        a.save choice.text
        end
      end
      }
      button 'show' do
      @fwin4.clear {
      para a.functies.to_s
      }
      end
      }
    }
	end
	
  @fwin2 = flow width: 0.5,height: 0.3 do
  end

  @fwin3 = flow width: 0.5,height: 0.7 do
    para "ook zoiets"
  end

  @fwin4 = flow width: 0.5,height: 0.7 do
  end
end

