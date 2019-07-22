class CarOwner

  attr_reader :name
  @@all = []
  @@total_owners = []
  def initialize(name)
    @name = name
    @@all.push(self)
  end

  def self.all
    @@all
  end

  def my_cars_info
    Car.all.select {|car| car.owner == self}
  end

  def my_cars
    my_cars_info.map {|car| car.make}
  end

  def self.total_owners
    Car.all.map{|car| car.owner}.uniq
  end
   def self.average_owners
    (Car.all.length)/(self.total_owners.length).to_f
   end
end
