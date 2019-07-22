class Car

  @@all = []

  attr_reader :make, :model, :classification, :owner, :mechanic

  def initialize(make, model, classification, owner, mechanic)
    @make = make
    @model = model
    @classification = classification
    @owner = owner
    @mechanic = mechanic
    @@all << self
  end

  def self.all
    @@all
  end

  def self.classifications
    self.all.map{|car| car.classification}.uniq
  end

  def mechanics_with_classification
   cars_by_specialty = Car.all.select{|car| self.classification == car.mechanic.specialty}
   cars_by_specialty.map{|car| car.mechanic}
  end
end
