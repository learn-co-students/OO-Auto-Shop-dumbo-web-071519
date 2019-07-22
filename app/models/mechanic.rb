class Mechanic
  @@all = []
  attr_reader :name, :specialty

def initialize(name, specialty)
  @name = name
  @specialty = specialty
  @@all << self
end

def self.all
  @@all
end

def car_list
  Car.all.select {|car| car.mechanic == self}
end

def car_owners
  self.car_list.map(&:owner)
end

def owner_names
  self.car_list.map{|owner| owner.name}
end




end
