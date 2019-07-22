require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

rob = Mechanic.new("Rob", "engine repair")
bill = Mechanic.new("Bill", "tire replacement")

max = CarOwner.new("Max")
max_car = Car.new("Toyota", "Prius V", "engine repair", max, rob)

lucas = CarOwner.new("Lucas")
lucas_car = Car.new("Volkswagen", "Jetta", "tire replacement", lucas, bill)

#rob.cars
binding.pry
