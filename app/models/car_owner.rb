class CarOwner
  @@all = []

  attr_reader :name

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
      @@all
  end

  def get_cars
    Car.all.select{|car| car.owner == self}
  end

  def get_mechanics
    self.get_cars.map{|car| car.mechanic}
  end

  def self.avg_cars_per_owner
    car_counts = self.all.map{|owner| owner.get_cars.count}
    avg = (car_counts.inject(0){|sum, i| sum+i})/car_counts.size
  end


end
