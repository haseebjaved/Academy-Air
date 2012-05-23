class MileageCalculator
  
  CHART = { "ORD-SFO" => 1846, 
            'ORD-SEA' => 1721, 
            'ORD-BOS' => 866, 
            'ORD-LAX' => 1744, 
            'JFK-BOS' => 186, 
            'JFK-LAX' => 2475 
          }
  
  def initialize(departure_airport_code, arrival_airport_code)
    @departure_airport_code = departure_airport_code
    @arrival_airport_code = arrival_airport_code
  end
  
  def miles
    chart_key = "#{@departure_airport_code}-#{@arrival_airport_code}"
    miles = CHART[chart_key]
    if miles.nil?
      chart_key = "#{@arrival_airport_code}-#{@departure_airport_code}"
      miles = CHART[chart_key]
    end
    return miles
  end
  
  def duration
    
  end
  
end