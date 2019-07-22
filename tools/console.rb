require_relative '../config/environment.rb'


def reload
  load 'config/environment.rb'
end

bill = CarOwner.new("Bill")
maria = CarOwner.new("Maria")
carina = CarOwner.new("Carina")

arnold = Mechanic.new("Arnold", "antique")
morgan = Mechanic.new("Morgan", "exotic")
maya = Mechanic.new("Maya", "clunker")
kirk = Mechanic.new("Kirk", "antique")
luisa = Mechanic.new("Luisa", "exotic")


c1 = Car.new("Bill", "Kirk", "antique")
c2 = Car.new("Maria", "Luisa", "exotic")
c3 = Car.new("Bill", "Maya", "clunker")
c4 = Car.new("Carina", "Maya", "clunker")
c5 = Car.new("Maria", "Maya", "clunker")

binding.pry

puts "<3>"