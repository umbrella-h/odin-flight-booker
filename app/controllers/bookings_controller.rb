class BookingsController < ApplicationController

  def show
  end
  
  def new
  	#@booking = Booking.new
  end
  
  def create
    @passenger = Passenger.find(params[:passenger_id])
    @booking = @passenger.bookings.create(booking_params)
    redirect_to booking_path(@booking)
  end
  private
    def booking_params
      params.require(:booking).permit(:passenger_n, :flight_id)
    end
end
