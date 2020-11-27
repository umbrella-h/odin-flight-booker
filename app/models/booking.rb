class Booking < ApplicationRecord
  belongs_to :passenger, required: false
  belongs_to :flight
end
