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
    ## Gets list of all car instances
    @@all
  end

  def self.all_classifications
    ## Gets list of all car classifications
    self.all.map{|car| car.classification}.uniq
  end

  def mechanics
    ## Gets list of mechanics with this car's specialitys
    Mechanic.all.select{|mechanic| mechanic.specialty == self.classification}
  end

end
