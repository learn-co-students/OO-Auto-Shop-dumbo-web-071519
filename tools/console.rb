require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

## Testing 
adam = CarOwner.new("Adam")
dax = CarOwner.new("Dax")
millers = CarOwner.new("Miller")

dave = Mechanic.new("Dave", "antique")
claire = Mechanic.new("Claire", "exotic")
erin = Mechanic.new("Erin", "clunker")

car1 = Car.new("Honda", "Civic", "antique", adam, dave)
car2 = Car.new("Honda", "Civic", "antique", dax, dave)
car3 = Car.new("Honda", "Civic", "antique", adam, dave)
car4 = Car.new("Ferrari", "458", "exotic", dax, claire)
car5 = Car.new("McLaren", "570S", "exotic", dax, claire)
car6 = Car.new("Ford", "2009", "clunker",adam, erin)
car7 = Car.new("Ford", "2009", "clunker", millers, erin)
car8 = Car.new("Ferrari", "453", "exotic", millers, claire)


binding.pry

puts "KA CHOW!"