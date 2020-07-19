require_relative "lib/Animal.rb"
require_relative "lib/Zoo.rb"
require 'pry'


#Test your code here
bronx_zoo = Zoo.new("Bronx Zoo", "Bronx")
san_diego_zoo = Zoo.new("San Diego Zoo", "San Diego")

elephant = Animal.new("Elephant", 13000, "Ellie", bronx_zoo)
elephant2 = Animal.new("Elephant", 13000, "Eddy", bronx_zoo)
chimpanzee = Animal.new("Chimpanzee", 110, "Charles", bronx_zoo)
sea_otter = Animal.new("Sea Otter", 45, "Sigrid", san_diego_zoo)

bronx_zoo.location 
bronx_zoo.name 
Zoo.all 
bronx_zoo.animals 
bronx_zoo.animal_species
bronx_zoo.animal_nicknames
Zoo.find_by_location("San Diego")

elephant.nickname 
elephant.weight
elephant.species 
elephant.zoo 
Animal.all 
Animal.find_by_species("Elephant")

binding.pry
puts "done"
