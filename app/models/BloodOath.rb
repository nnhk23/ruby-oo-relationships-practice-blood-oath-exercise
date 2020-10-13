class BloodOath

    @@all = []

    attr_accessor :cult, :follower, :date

    def initialize(cult, follower, date)
        @cult = cult
        @follower = follower
        @date = date
        @@all << self
    end

    def self.all
        @@all
    end

end