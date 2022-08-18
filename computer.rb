# super class
class Computer
    attr_accessor :model, :country, :year

    @@system_memory = 32
    
    def initialize(model, country, year)
        @model = model
        @country = country
        @year = year
        @storage = 512

    end
    
    def print_computer
        puts "Computer: #{self.model}, Year: #{self.year}"
    end

    def self.show_memory
        @@system_memory
    end

    def storage
        @storage
    end

end

# TODO: Implement class that inherits from Computer class
class Hp < Computer             #inherit from Computer class
    
    @@system_memory = 32
    def initialize(model, country, year)
        super(model, country, year)         #access without self and class instance
        @storage = 256
    end

    def print_computer
        puts "Computer: #{self.model}, Year: #{self.year}, Country: #{self.country}"
    end
end

comp1 = Hp.new("Envy", "USA", 2022)
puts comp1.print_computer
puts Hp.show_memory
puts comp1.storage



class MacBook < Computer          #inherit from Computer class
    
end

comp2 = MacBook.new("PRO M1", "USA", 2020)
comp2.print_computer
puts MacBook.show_memory

# TODO: Use the super keyword to access attributes and methods from Computer


