class FlightsController < ApplicationController
	def index
		@airports = Airport.all
		@flights = Flight.all
		
		#@selected_date = Date.civil(params[:dep_time_yr].to_i, params[:dep_time_mon].to_i, params[:dep_time_day].to_i)
		@result_flights = Flight.where(dep_airport_id: params[:dep_airport_id], arr_airport_id: params[:arr_airport_id], dep_time: "2020-12-02 13:00:00")#@selected_date.all_day)
	end
	
	def create
		@flight = Flight.new(flight_params)
	end
	private
		def flight_params
	      params.require(:flight).permit(:dep_airport_id, :arr_airport_id, :dep_time, :duration)
		end
end
