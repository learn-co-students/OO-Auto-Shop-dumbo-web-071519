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
 
  # access all owners
  # return array of amt_of_cars for each owner
  # average array of amt_of_cars
  def self.average_cars_owned
    Car.all.length / self.all.size.to_f
  end
    
    # total_cars = Car.all.reduce { |sum, car| sum + car }
    # total_cars / CarOwner.all.size
  

end
