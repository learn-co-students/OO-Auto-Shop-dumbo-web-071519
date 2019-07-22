class CarOwner

  attr_reader :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def get_cars
    Car.all.select {|car| car.owner == self}
  end

  def get_mechanics
    self.get_cars.map{|car| car.mechanic}
  end

  

end
