require 'pry'
require '../app/models/car_owner.rb'
require '../app/models/car.rb'
require '../app/models/mechanic.rb'

bill = CarOwner.new("Bill")
maria = CarOwner.new("Maria")
carina = CarOwner.new("Carina")

arnold = Mechanic.new("Arnold", "antique")
morgan = Mechanic.new("Morgan", "exotic")
maya = Mechanic.new("Maya", "clunker")
kirk = Mechanic.new("Kirk", "antique")
luisa = Mechanic.new("Luisa", "exotic")


c1 = Car.new(bill, "1918 Ford Model-T", kirk, "antique")
c2 = Car.new(maria, "1968 Fiat Spider", luisa, "exotic")
c3 = Car.new(bill, "1998 Toyota Camry", maya, "clunker")
c4 = Car.new(carina, "1989 Volkswagen Bus", maya, "clunker")
c5 = Car.new(maria, "2002 Ford Focus", maya, "clunker")

binding.pry

puts "<3>"