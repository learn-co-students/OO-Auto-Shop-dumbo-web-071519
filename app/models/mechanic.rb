class Mechanic

  attr_reader :name, :specialty
  @@all = []
  @@names

def initialize(name, specialty)
  @name = name
  @specialty = specialty
  @@all.push(self)
end

def self.all
  @@all
end

def self.names
  self.all.map{|mech| mech.name}.join(", ")
  
end

def my_cars_info
  my_cars =Car.all.select{|car| car.mechanic == self}
end

def cars_I_service
  my_cars_info.map{|car| car.make}.uniq
end
def list_of_my_car_owners
  my_cars_info.map{|car| car.owner.name}.uniq.join(", ")
  
end





end
