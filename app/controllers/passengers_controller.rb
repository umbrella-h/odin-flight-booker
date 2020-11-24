class PassengersController < ApplicationController


   def new
   	@passenger = Passenger.new
   end
	
	def show
		@passenger = Passenger.find(params[:id])
	end
	  
	def create
		@passenger = Passenger.new(passenger_params)


  		if @passenger.save
	     redirect_to @passenger#-----------------remember to change to show
  		else
    	  render 'new'
  		end
	end
	
	#useless??
	private
		def passenger_params
			params.require(:passenger).permit(:name, :email)
		end	
end
