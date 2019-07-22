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

  def self.all_classifications
    @@all.map(&:classification)
  end

  def list_mechanics
    Mechanic.all.select{|mechanic| mechanic.specialty == self.classification}
  end

end
