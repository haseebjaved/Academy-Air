class Reservation < ActiveRecord::Base
  attr_accessible :card, :date, :flight_id, :user_id
  
  belongs_to :user
  belongs_to :flight
  
end
