class Acupunt
	attr_reader  :afk, :name,:chname,  :locatie, :aard, :actie
		
	def initialize(arr)
		@afk=arr[0]
		@name=arr[1]
		@chname=arr[2]
		@locatie=arr[3]
		@aard=arr[4]
		@actie=arr[5..-1]
	end 
  
  def to_s
    "
    Afkorting : #{afk}
    Naam      : #{name}
    Chinese   : #{chname}
    Locatie   : #{locatie}
    Aard      : #{aard}
    Actie     : #{actie}
    "
  end
end
