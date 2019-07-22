class Car

  attr_reader :make, :model, :owner, :mechanic
  attr_reader :classification

  @@all = []
  @@all_cars = []
  @@classifications = []
  @@mechs_we_can_use = []

  def initialize(make, model, classification,owner, mechanic)
    @make = make
    @model = model
    @classification = classification
    @owner = owner
    @mechanic = mechanic
    @@all.push(self)
  end

  def self.all
    @@all
    
  end
  def self.all_cars
    self.all.map {|car| car.make}
  end

  def self.classifications
    @@classifications = self.all.map {|car| car.classification}
  end

  def self.mechs_we_can_use(classification)
    thier_info = Mechanic.all.select {|mech| mech.specialty == classification}
    return thier_names = thier_info.map{|mech| mech.name}

  end
    

  

end
