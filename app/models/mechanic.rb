class Mechanic

  @@all = []

  attr_reader :name, :specialty

  def initialize(name, specialty)
    @name = name
    @specialty = specialty

    @@all << self
  end

  def self.all
    ## Gets list of all mechanics
    @@all
  end

  def cars
    ## Gets list of all cars a mechanic services
    Car.all.select{|car| car.mechanic == self}
  end

  def car_owners
    ## Gets list of all CarOwner instances that hire this mechanic
    self.cars.map{|car| car.owner}.uniq
  end

  def car_owners_names
    ## Gets list of all car owner names this mechanic services
    self.car_owners.map{|owner| owner.name}
  end

end
