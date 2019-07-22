require_relative 'app/models/car_owner.rb'
require_relative 'app/models/car.rb'
require_relative 'app/models/mechanic.rb'

require 'pry'








## ------------------ OWNERS ------------------- ##

Jason = CarOwner.new("Jason")
Pete = CarOwner.new("Pete")
Rod = CarOwner.new("Rod")
Ernie = CarOwner.new("Ernie")
Wayne = CarOwner.new("Wayne")
Zack = CarOwner.new("Zack")


## ----------------  MECHANICS ------------------- ##
# "antique", "exotic", or "clunker"
Bob_mech = Mechanic.new("Bob", "exotic")
Steve_mech = Mechanic.new("Steve", "clunker")
Joe_mech = Mechanic.new("Joe", "antique")
Corn_mech = Mechanic.new("Corn", "exotic")
Lue_mech = Mechanic.new("Lue", "clunker")
Ed_mech = Mechanic.new("Joe", "general")


## ------------------  CARS ---------------------- ##

bettle = Car.new("VW", "bettle", "clunker", Pete, Corn_mech )
sting_ray = Car.new("Chevey", "sting ray", "exotic" , Zack, Lue_mech )
california = Car.new("Ferrari", "California", "exotic", Wayne, Steve_mech)
_911= Car.new("Porsche", "911 Carrera", "exotic", Ernie, Ed_mech)

bettle_2 = Car.new("VW", "bettle", "clunker", Wayne, Corn_mech )
sting_ray_45 = Car.new("Chevey", "sting ray", "exotic" , Jason, Lue_mech )
california_110 = Car.new("Ferrari", "California", "exotic", Jason, Steve_mech)
_911_turbo = Car.new("Porsche", "911 Carrera", "exotic", Rod, Ed_mech)
Golf = Car.new("VW", "bettle", "clunker", Pete, Ed_mech)
Jetta = Car.new("VW", "bettle", "clunker", Pete, Corn_mech)



binding.pry

puts "done"