class Flight < ApplicationRecord
  belongs_to :dep_airport, :class_name => 'Airport'
  belongs_to :arr_airport, :class_name => 'Airport'
  belongs_to :'Booking'
end
