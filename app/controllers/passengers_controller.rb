class PassengersController < ApplicationController


   def new
   	@selected_flight_id = params[:selected_flight].to_i
   	console
	   #params = { user_passenger: { name: params[:name], email: params[:email]}}#, booking_attributes: { flight_id: @selected_flight_id, passenger_n: params[passenger_n] }}}
   	@user_passenger = Passenger.create(name: params[:name], email: params[:email])#params[:user_passenger])
   	

   end
	
	def show
		@passenger = Passenger.find(params[:id])
	end
	  
	def create
		@passenger = Passenger.new(passenger_params)


  		if @passenger.save
	     redirect_to @passenger#-----------------remember to change to show
  		else
    	  #render 'new'
    	  redirect_to @passenger
  		end
	end
	
	#useless??
	private
		def passenger_params
			params.require(:passenger).permit(:name, :email)
		end	
end
