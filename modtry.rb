require 'green_shoes'
require './orgaan'
require 'Yaml'
Shoes.app do

  warm = Orgaan.new './data/Driewarmer.csv'
  warm.set_punten

  para warm.to_s
    button "go" do
      window do 
      warm.punten.each do |e|
      para e.to_s
      end
    end
  end
  warm.write self
end
  
  
