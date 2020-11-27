class PassengersController < ApplicationController


   def new
   	@passenger = Passenger.new
   	@bookings = @passenger.bookings.build
   	
   	@selected_flight_id = params[:selected_flight].to_i
   	@passenger_n = params[:passenger_n].to_i  	
   	@current_flight = Flight.find(@selected_flight_id)
   	
   	#@bookings.flight_id = @selected_flight_id
   	#@bookings.passenger_n = @passenger_n  	
   	
   	console
   end
	
	def show
		@passenger = Passenger.find(params[:id])
		
		#flash.now[:alert] = ""
	end
	  
	def create
		@passenger = Passenger.new(passenger_params)
		
=begin		
		if @passenger.save
	     redirect_to @passenger
  		else
    	  render 'new'
  		end
=end

	end
	
	private
		def passenger_params
			params.require(:passenger).permit(:name, :email, bookings_attributes: [[ :flight_id, :passenger_n]])
		end	
end
