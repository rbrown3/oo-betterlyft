require 'pry'

class Ride
attr_reader :driver
attr_accessor :passenger, :distance

@@all = []
@@distances = []

    def initialize(driver,passenger, distance)
      @driver =driver
      @passenger= passenger
      @distance=distance
      @@distances << @distance
      @@all << self
    end




    def self.all
      @@all
    end

   def self.average_distance
     @@distances.reduce(0,:+)/ @@distances.count
   end

end
