class Owner

  attr_reader :species
  @@all = []

  def initialize(species)
    @species = species
  end

  def self.all
    @@all
  end

  def self.count
    @@all.count
  end

  def self.reset_all
    @@all.clear
  end

  def say_species
    self.species
  end

end
