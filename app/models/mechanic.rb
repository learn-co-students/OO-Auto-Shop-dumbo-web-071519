class Mechanic

    attr_reader :name, :specialty

    @@all = []

  def initialize(name, specialty)
    @name = name
    @specialty = specialty
    @@all << self
  end

  def self.all
    @@all
  end

  def this_mechanics_cars
    Car.all.select do |car|
      car.mechanic == self
    end
  end

  def my_clients
    this_mechanics_cars.map do |car|
      car.owner
    end
  end

  def my_clients_names
    my_clients.map do |client|
      client.name
    end
  end

end
