class PassengersController < ApplicationController


   def new
   	@passenger = Passenger.new
   	@selected_flight_id = params[:selected_flight].to_i
   	@passenger_n = params[:passenger_n]
   	@current_flight = Flight.where(id: @selected_flight_id)
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
