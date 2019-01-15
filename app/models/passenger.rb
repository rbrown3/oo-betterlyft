require 'pry'

class Passenger
  attr_accessor :name, :driver

  @@all = []

def initialize(name)
  @name=name
  @@all << self
end

def self.all
   @@all
end

def rides
  Ride.all.select do |ride|
    ride.passenger == self
end
end

def drivers
  drivers_array = []
  rides.select do |ride|
    self == ride.passenger
  end.map do |ride|
    drivers_array << ride.driver
   end
   drivers_array.uniq
 end

def total_distance
  passenger_rides = Ride.all.select do |trip|
   self == trip.passenger
  end

  distance_array = passenger_rides.map do |ride|
  ride.distance
  end
  distance_array.inject(0) {|sum,x| sum + x }
end
def self.premium_members
  Passenger.all.select do |passenger|
    passenger.total_distance > 100
end
end


end
