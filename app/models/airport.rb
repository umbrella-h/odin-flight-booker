class Airport < ApplicationRecord
	has_many :departures, :class_name => 'Flight', :foreign_key => 'dep_airport_id'
	has_many :arrivals, :class_name => 'Flight', :foreign_key => 'arr_airport_id'
end
