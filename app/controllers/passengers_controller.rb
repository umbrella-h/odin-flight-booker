class PassengersController < ApplicationController


   def new
   	@selected_flight_id = params[:selected_flight].to_i
   	@current_flight = Flight.where(id: @selected_flight_id)
   	console
	   params_nested = { user_passenger: { name: params[:name], email: params[:email], bookings_attributes: [{ flight_id: @selected_flight_id, passenger_n: params[:passenger_n] }]}}
	   unless params[:name].blank? || params[:email].blank? || params[:passenger_n].blank?
   		@user_passenger = Passenger.create!(params_nested[:user_passenger])
   		
   	end
   	


   end
	
	def show
		@passenger = Passenger.find(params[:id])
		
		#flash.now[:alert] = ""
	end
	  
	def create
		@passenger = Passenger.new(passenger_params)
		
		if @passenger.save
	     redirect_to passenger_path(@passenger.id)#-----------------remember to change to show
  		else
    	  #render 'new'
    	  redirect_to passenger_path(@passenger.id)
  		end



	end
	
	#useless??
	private
		def passenger_params
			params.require(:passenger).permit(:name, :email)
		end	
end
