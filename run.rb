require 'pry'
require_relative 'app/models/car_owner.rb'
require_relative 'app/models/mechanic.rb'
require_relative 'app/models/car.rb'

owner1 = CarOwner.new("Oscar")
owner2 = CarOwner.new("Kane")
owner3 = CarOwner.new("Ross")
mechanic1 = Mechanic.new("Karl", "Luxury")
mechanic2 = Mechanic.new("Otto", "Budget")
mechanic4 = Mechanic.new("Vinny", "Budget")
mechanic3 = Mechanic.new("Franky", "SUV")
car1 = Car.new("Ford", "Pinto", "Budget", owner1, mechanic2)
car2 = Car.new("Chevy", "Blazer", "SUV", owner2, mechanic2)
car3 = Car.new("GM", "Yukon", "SUV", owner2, mechanic3)
car3 = Car.new("Ferrari", "Testarossa", "Luxury", owner3, mechanic3)





binding.pry