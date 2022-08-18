# TODO: CREATE CLASS AND INSTANCE METHODS (INCLUDE VARIABLES)

class Animal

  attr_reader :species
  attr_writer :species
  attr_accessor :life_expectancy

  #setter
  def name=(name)
    @name = name
  end

  #getter
  def name
    @name
  end

  def sound
    puts "#{self.name} is sounding"    #self accesses internal variables/instances
  end


end

dog = Animal.new
dog.name = "Charlie"
dog.sound
dog.species = "Chihuahua"
dog.life_expectancy = 10

puts dog.species

cat = Animal.new
cat.name = "Rose"
cat.sound
puts cat.name


lioness = Animal.new
lioness.name = "Nala"
puts lioness.name


# TODO: Use self to access instance variables
