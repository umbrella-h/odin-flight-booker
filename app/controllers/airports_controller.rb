class AirportsController < ApplicationController
	def create
		@airport = Airport.new(airport_params)
	private
		def airport_params
	      params.require(:airport).permit(:code)
		end
end
