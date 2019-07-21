class CarOwner

  @@all = []

  attr_reader :name

  def initialize(name)
    @name = name

    @@all << self
  end

  def self.all
    ## Gets list of all car owners
    @@all
  end

  def cars 
    ## Gets list of all car instances an owner has
    Car.all.select{|car| car.owner == self}
  end

  def mechanics
    ## Gets list of all mechanices an owner goes to
    self.cars.map{|car| car.mechanic}.uniq
  end

  def self.avg_amount_of_cars
    ## Average amount of cars owners for all owners
    Car.all.count / CarOwner.all.count
  end

end
