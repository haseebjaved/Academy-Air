require 'test_helper'

class FlightTest < ActiveSupport::TestCase
  
  test "the distance is calculated correctly" do
    f = Flight.new(:departure_airport_code => 'ORD', :arrival_airport_code => 'BOS')
    f.calculate_distance
    assert_equal 866, f.distance
  end

  test "the distance is calculated automatically when the flight is saved" do
    f = Flight.create(:departure_airport_code => 'ORD', :arrival_airport_code => 'BOS')
    assert_equal 866, f.distance
  end
  
  
end
