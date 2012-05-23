class Flight < ActiveRecord::Base
  attr_accessible :arrival_airport_code, :departs_at, :departure_airport_code, :distance, :number, :seats
  
  before_save :calculate_distance
  
  
  def calculate_distance
    mc = MileageCalculator.new(self.departure_airport_code, self.arrival_airport_code)
    self.distance = mc.miles
  end
  
end
