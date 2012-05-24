class ReservationsController < ApplicationController
  def new
  end

  def create
   @reservation = Reservation.new(params[:reservation])
   
   @reservation.user.miles = @reservation.user.miles + @reservation.flight.distance
   @reservation.save
   @reservation.user.save
   redirect_to root_url
  end

  def destroy
  end
  
  def show
    @reservation = Reservation.new
  end
end
