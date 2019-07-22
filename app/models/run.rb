require "./car_owner.rb"
require "./car.rb"
require "./mechanic.rb"
require "pry"

co1 = CarOwner.new("jim")
co2 = CarOwner.new("bob")
co3 = CarOwner.new("nancy")
co4 = CarOwner.new("dan")

m1 = Mechanic.new("foo", "suv")
m2 = Mechanic.new("bar", "suv")
m3 = Mechanic.new("baz", "sedan")
m4 = Mechanic.new("ooof", "sports")

ca1 = Car.new("Honda","1","sedan",co1, m3)
ca2 = Car.new("Mazda","2","suv",co1, m2)
ca3 = Car.new("Hyundai","1","sedan",co2, m1)
ca4 = Car.new("Ferarri","4","sports",co3, m4)


binding.pry
puts "Vroom"


