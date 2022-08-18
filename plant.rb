# TODO: Implement a class do illustrate how class variables and methods work.

class Plant

  @@num_of_trees = 0      #class variable
  
  attr_accessor :species

  def initialize(species)
    @species = species
    @@num_of_trees += 1
	info = {				#
		instance_reference: self,
		number: @num_of_trees
	}
	@@all_instances << info

  end

  def speak_of_species
    puts "A #{self.species} is growing"
  end

  #create getter for num_of_trees
  def self.tree_count           #
    @@num_of_trees
  end

  #show all_instances
  def show_instances
	@@all_instances
  end

end

mwarubaini = Plant.new("Neem tree")
mwarubaini.speak_of_species
puts Plant.tree_count 

eucalyptus = Plant.new("Eucalyptus Tree")
mango = Plant.new("Mango Tree")
cypress = Plant.new("Cypress Tree")
orange = Plant.new("Orange Tree")

puts Plant.tree_count    #counts the numbe of trees

#class variables are common
puts


