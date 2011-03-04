
class ZangFu
	require './acupunt'
 	attr_reader :punten ,:functies, :points
 	def initialize points
 	@points = points
 	self.set_punten
 	end
	
		def set_punten
			@punten=[]
			File.open("#{@points}", "r").each {|e|
				e.chomp!
				b=e.split(";")
				@punten.push(Acupunt.new(b[0],b[1],b[2],b[3],b[4],b[5]))
            }
	end
        def functies
            @functies = []
            File.open("#{filename}", "r").each {|r|
                r.chomp!
                b=r.split(";")
                b.each{|l| @functies.push(l)}
                }
        end
end
