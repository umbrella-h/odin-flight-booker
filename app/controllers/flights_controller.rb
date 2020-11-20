class FlightsController < ApplicationController
	def index
		@airports = Airport.all
		@flights = Flight.all
	end
	
	def create
		@flight = Flight.new(flightt_params)
	end
	private
		def flight_params
	      params.require(:flight).permit(:dep_time, :duration)
		end
end
