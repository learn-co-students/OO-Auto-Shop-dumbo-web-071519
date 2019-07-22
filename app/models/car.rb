class Car
 
  attr_reader :owner, :model, :mechanic, :classification

  @@all = []

  def initialize(owner, model, mechanic, classification)
    
    @owner = owner
    @model = model
    @mechanic = mechanic
    @classification = classification
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

  def self.experts(classificaiton)
    Mechanic.all.select do |mechanic| 
      mechanic.specialty == classificaiton
    end
  end

end
