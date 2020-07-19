class Animal
    attr_accessor :species, :weight, :nickname, :zoo

    @@all = []

    def initialize(species, weight, nickname, zoo)
        @species = species
        @weight = weight 
        @nickname = nickname 
        @zoo = zoo 
        save
    end

    def self.all
        @@all 
    end

    def self.find_by_species(species_name) 
        self.all.select{|animal| animal.species == species_name}
    end
    
    private

    def save
        @@all << self 
    end
end
