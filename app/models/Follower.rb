class Follower

    attr_accessor :name, :age, :life_motto, :cult

    @@all = []
    
    def self.all
        @@all
    end

    def initialize(name, age, life_motto)
        @name = name
        @age = age
        @life_motto = life_motto
        @@all << self
    end

    def join_cult(cult)
        cult.follower = self
    end

    def cults
        Cult.all.select{|c| c.follower == self}
    end

    def self.of_a_certain_age(age)
        @@all.select{|f| f.age >= age}
    end

end