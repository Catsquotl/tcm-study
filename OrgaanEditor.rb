module OrgaanEditor

	def write(e)
	  Shoes.app  do
    
	  	def vars(e)
	  	  @list =[]
		    var = e.instance_variables
		    var.each do |x|
          a = e.instance_variable_get(x)
		      @list.push a
		    end
        punt = Array.new(e.punten)
        para punt
	    end
	    
	    vars(e)
	    background khaki
      
      stack do
        @list.each do |f|
        edit_line.text = "#{f}"
        end  
 
      end
        
=begin        
      flow width: 0.7 do
        button  "naar bestand" do
          fnaam=@list.text
          filename = "./data/#{fnaam}.csv"
          File.open("#{filename}" , "a+") do |f|
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
      
  
  stack do
    funckey = edit_box
    funcval = edit_box
    button "go" do
      a.write_func funckey.text,funcval.text
    end
    button "save" do
      a.save choice.text
     end
  end
=end
end
end  
end
