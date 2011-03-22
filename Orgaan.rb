class Orgaan
	require_relative './acupunt'
  require_relative './orgaaneditor'
  require 'psych'
  include OrgaanEditor
  
 	attr_reader :punten ,:functies, :points
  
 	def initialize point
 	  @points = point
    @functies = {}
    self.set_punten
 	end
	
  def set_punten
    @punten=[]
    File.foreach(@points) {|csv_line|
      csv_line.chomp!
      point_arr = csv_line.split(";")
      @punten.push(Acupunt.new(point_arr))
    }
  end
  
  def save name
    File.open("./data/#{name}.yml",'w') do |f|
      f.print Psych.dump(self)
    end
  end
  
  def write_func key,value
    @functies.store key, value
  end
  
  def to_s
    @functies.to_s
  end
end


