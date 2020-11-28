class Passenger < ApplicationRecord
	validates :email, presence: true
	has_many :bookings
	accepts_nested_attributes_for :bookings
end
