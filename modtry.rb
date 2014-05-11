require 'shoes'
require_relative './orgaan'

Shoes.app do

org = Orgaan.new('./data/Galblaas.csv')
org.set_punten
key = edit_box
val = edit_box
button 'save' do
org.write_func key.text,val.text
org.save 'Galblaas'
end
end
