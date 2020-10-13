class Cult

    attr_accessor :name, :location, :founding_year, :slogan, :follower

    @@all = []

    def initialize(name, location, founding_year, slogan)
        @name = name
        @location = location
        @founding_year = founding_year
        @slogan = slogan
        @@all << self
    end

    def self.all
        @@all
    end

    def recruit_follower(follower)
        follower.cult = self
    end

    def cult_population
        Follower.all.select{|f| f.cult == self}.count
    end

    def self.find_by_name(name)
        @@all.find{|cult| cult.name == name}
    end

    def self.find_by_location(location)
        @@all.find{|cult| cult.location == location}
    end

    def self.find_by_founding_year(year)
        @@all.find{|cult| cult.founding_year == year}
    end

end