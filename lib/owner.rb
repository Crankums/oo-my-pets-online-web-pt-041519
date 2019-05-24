require 'pry'

class Owner

  attr_accessor :name, :pets
  attr_reader :species
  @@all = []

  def initialize(species)
    @species = species
    @@all << self
    @pets = {:cats => [], :dogs => [], :fishes => []}
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

  # def pets
  # end

  def buy_fish(fish_name)
    pets[:fishes] << Fish.new(fish_name)
  end

  def buy_cat(name)
    pets[:cats] << Cat.new(name)
  end

  def buy_dog(dog_name)
    dog = Dog.new(name)
    pets[:dogs] << dog
  end
end
