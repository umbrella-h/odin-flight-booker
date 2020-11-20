class Flight < ApplicationRecord
  belongs_to :dep_airport
  belongs_to :arr_airport
end
