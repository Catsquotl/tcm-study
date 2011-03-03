class Acupunt

	attr_reader  :afk, :name,:chname,  :locatie, :aard, :actie
		
	def initialize(afk,name,chname,locatie,aard,actie)
		@afk=afk
		@name=name
		@chname=chname
		@locatie=locatie
		@aard=aard
		@actie=actie
	end 
end
