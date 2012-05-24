class User < ActiveRecord::Base
  attr_accessible :email, :first, :last, :miles, 
                  :password, :password_confirmation
  
  has_secure_password
  has_many :reservations
  has_many :flights, through: :reservations
  
  before_create :start_miles_at_zero
  
  def start_miles_at_zero
    self.miles = 0
  end
  
end
