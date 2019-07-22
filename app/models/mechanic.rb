class Mechanic
=begin
**Mechanic**

  - Get a list of all mechanics X

  - Get a list of all cars that a mechanic services X

  - Get a list of all the car owners that go to a specific mechanic X

  - Get a list of the names of all car owners who
  go to a specific mechanic 
=end

  attr_reader :name, :specialty
  @@all = []
  def initialize(name, specialty)
    @name = name
    @specialty = specialty
    @@all << self
  end

  def self.all
    @@all
  end

  def cars
    Car.all.select do |car|
      car.mechanic == self
    end
  end

  def car_owners 
    self.cars.map do |car|
      car.car_owner
    end
  end

  def car_owner_names
    self.cars_owners.map do |car|
      car.car_owner.name
    end
  end
end
