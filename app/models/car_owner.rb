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

  def my_cars
    Car.all.select do |car|
      car.owner == self
    end
  end

  def my_mechanics
    my_cars.map { |car| car.mechanic}
  end

  def self.average_cars_owned
    Car.all.length / self.all.size.to_f
  end 

end
