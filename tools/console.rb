require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


Yuyi = Passenger.new("Yuyi")
Tommy = Passenger.new("Tommy")
Shauna = Passenger.new("Shauna")
Laura = Passenger.new("Laura")
Maria = Passenger.new("Maria")
Steven = Driver.new("Steven")
Renee = Driver.new("Renee")
Jovani = Driver.new("Jovani")
First_ride = Ride.new(Renee,Yuyi,2.3)
Second_ride = Ride.new(Steven, Tommy, 100.4)
Third_ride = Ride.new(Renee,Tommy,4.5)
Fourth_ride = Ride.new(Renee,Tommy,1.2)
binding.pry
