require 'pry'


class Driver

@@all = []

  attr_accessor :name, :passenger

    def initialize(name)
    @name = name
    @passenger
    @@all << self
  end

  def self.all
    @@all
  end

  def passenger_names
    passenger_array = []
    rides.select do |ride|
      self == ride.driver
    end.map do |ride|
     passenger_array << ride.passenger.name
   end
     passenger_array.uniq

     #ride.driver.passenger
     #ride.passenger#all of the rides this driver has
      end



  def rides
    Ride.all.select do |ride|
      ride.driver == self
    end
  end

  def self.mileage_cap(distance)
    Ride.all.select do |list|
      list.distance > distance
    end.map do |list|
      list.driver
  end
end

end
