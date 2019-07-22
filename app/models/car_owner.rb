class CarOwner
=begin 
**CarOwner**

  - Get a list of all owners X

  - Get a list of all the cars that a specific owner has 

  - Get a list of all the mechanics that a specific owner goes to

  - Get the average amount of cars owned for all owners
=end
  attr_reader :name
  @@all = []
  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def cars
    Car.all.select do |car|
      car.car_owner == self
    end
  end

  def mechanics
    self.cars.map do |car|
      car.mechanic
    end
  end

  def self.average_car_num
    Car.all.count / self.all.count
  end
end
