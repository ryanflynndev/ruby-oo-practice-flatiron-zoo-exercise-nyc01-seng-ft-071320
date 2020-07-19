class Zoo
    attr_accessor :name, :location

    @@all = []

    def initialize(name, location)
        @name = name
        @location = location
        save
    end

    def self.all 
        @@all 
    end

    def animals
        Animal.all.select{|animal| animal.zoo == self}
    end

    def animal_species
        self.animals.map{|animal| animal.species}.uniq
    end

    def find_by_species(species_name)
        self.animals.select{|animal| animal.species == species_name}
    end

    def animal_nicknames
        self.animals.map{|animal| animal.nickname}
    end

    def self.find_by_location(location_name)
        self.all.select{|zoo| zoo.location == location_name}
    end

    private 

    def save
        @@all << self
    end 
end
