require 'pry'

class Owner

  attr_accessor :name, :pets
  attr_reader :species
  @@all = []

  def initialize(species)
    @species = species
    @@all << self
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
    "I am a #{species}."
  end

  def pets
    @pets = {:cats => [], :dogs => [], :fishes => []}
  end

  def buy_fish(name)
    fish = Fish.new(name)
    #binding.pry
    pets[:fishes]=fish
  end
end
