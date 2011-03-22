class AcupuntWriter
  require "green_shoes"
  attr_reader  :afk, :name,:chname,  :locatie, :aard, :actie
    
  Shoes.app  do
    background khaki

    flow width: 0.3, height: 0.1 do
      para "welke afkorting?"
    end        
    flow width: 0.7, height: 0.1 do
      @afk = edit_line
    end
    flow width: 0.3, height: 0.1 do
      para "welke naam?"      
    end
    flow width: 0.7, height: 0.1 do
      @name = edit_line
    end
    flow width: 0.3, height: 0.1 do        
      para "welke chnaam"  
    end
    flow width: 0.7, height: 0.1 do
      @chname = edit_line
    end
    flow width: 0.3, height: 0.1 do        
      para "welke locatie?"  
    end 
    flow width: 0.7, height: 0.1 do
      @locatie = edit_line
    end        
    flow width: 0.3, height: 0.1 do
      para "welke aard"       
    end
    flow width: 0.7, height: 0.1 do
      @aard = edit_line
    end
    flow width: 0.3, height: 0.1 do
      para "welke actie?"
    end
    flow width: 0.7, height: 0.1 do
      @actie = edit_line
    end
    flow width: 0.3 do
      @list = list_box :width=>0.8, :items =>["Blaas","Long","Nier","Dikkedarm","Pericard","Sanjiao","Hart","Dunnedarm","Galblaas","Lever","Maag","Milt"].sort
    end
        
    flow width: 0.7 do
      button  "naar bestand" do
        fnaam=@list.text
        filename = "./data/#{fnaam}.csv"
        File.open(filename, "a+") do |f|
          f.puts   "#{@afk.text}; #{@name.text}; #{@chname.text}; #{@locatie.text}; #{@aard.text}; #{@actie.text}"
          @afk.text=""
          @name.text=""
          @chname.text=""
          @locatie.text=""
          @aard.text=""
          @actie.text=""    
        end 
      end
    end 
  end
end  






