class Owner

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

end
