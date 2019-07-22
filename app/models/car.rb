class Car
=begin
**Car**

  - Get a list of all cars X

  - Get a list of all car classifications

  - Get a list of mechanics that have an expertise that matches the car classification

=end
  attr_reader :make, :model, :classification,:car_owner, :mechanic
  @@all = []
  def initialize(make, model, classification, car_owner, mechanic)
    @make = make
    @model = model
    @classification = classification
    @car_owner = car_owner
    @mechanic = mechanic
    @@all << self
  end

  def self.all
    @@all
  end

  def self.classifications
    self.all.map do |car|
      car.classification
    end
  end

  def find_mechanic_by_classification
    Mechanic.all.select do |mechanic|
      mechanic.specialty == self.classification
    end
  end
end
