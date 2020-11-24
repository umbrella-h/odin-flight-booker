class FlightsController < ApplicationController
	def index
		@airports = Airport.all
		@flights = Flight.all
		@result_flights = Flight.where(dep_airport_id: "---")

		if params.has_key?(:dep_time_yr) && params.has_key?(:dep_time_mon) && params.has_key?(:dep_time_day)
			unless params[:dep_time_yr].blank? || params[:dep_time_mon].blank? || params[:dep_time_day].blank?
				@selected_date = DateTime.civil(params[:dep_time_yr].to_i, params[:dep_time_mon].to_i, params[:dep_time_day].to_i)
				@result_flights = Flight.where(dep_airport_id: params[:dep_airport_id], arr_airport_id: params[:arr_airport_id]).where(dep_time: 	@selected_date.all_day)
				#('dep_time < ? AND dep_time >= ?', @selected_date.beginning_of_day)

			end
		end	
		#console		
	end
	
	def create
		@flight = Flight.new(flight_params)
	end
	
	private
		def flight_params
	      params.require(:flight).permit(:dep_airport_id, :arr_airport_id, :dep_time, :duration)
		end
end
