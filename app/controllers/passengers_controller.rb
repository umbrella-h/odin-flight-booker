class PassengersController < ApplicationController


   def new
   	@selected_flight_id = params[:selected_flight].to_i
   	@current_flight = Flight.find(@selected_flight_id)
   	@passenger_n = params[:passenger_n].to_i
   	console
	   params_nested = { user_passenger: { name: params[:name], email: params[:email], bookings_attributes: [{ flight_id: @selected_flight_id, passenger_n: @passenger_n}]}}
	   @same_email_p = Passenger.where(email: params[:email])
	   
	   if @same_email_p.blank?
	 	  unless params[:name].blank? || params[:email].blank? || params[:passenger_n].blank?	   	
   			@user_passenger = Passenger.create!(params_nested[:user_passenger]) 
   			if @user_passenger.save
   				@pre_avail = Flight.find(@selected_flight_id).avail
   				Flight.update(@selected_flight_id, avail: @pre_avail- @passenger_n)
	 	    		redirect_to passenger_path(@user_passenger.id)
  				else
    		  		render 'new'
  				end   	  		
   		end
   	else
   		if @same_email_p.bookings.where(flight_id: @selected_flight_id).blank?
   				
   		
   		else
   			
   		
   		end	
   	end	
   end
	
	def show
		@passenger = Passenger.find(params[:id])
		
		#flash.now[:alert] = ""
	end
	  
	def create
		@passenger = Passenger.new(passenger_params)
		
		
		#if @passenger.save
	   #  redirect_to passenger_path(@passenger.id)
  		#else
    	  #render 'new'
    	#  redirect_to passenger_path(@passenger.id)
  		#end
	end
	
	#in need??
	def edit
		@passenger = Passenger.find(params[:id])
	end
	
	def update
		@passenger = Passenger.find(params[:id])
		#if 
		#end
		
		#flash.now[:alert] = ""	
	
	end
	
	
	private
		def passenger_params
			params.require(:passenger).permit(:name, :email,
			 bookings_attributes: [[ :flight_id, :passenger_n]])
		end	
end
