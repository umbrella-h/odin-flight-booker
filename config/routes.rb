Rails.application.routes.draw do
	get 'flights/index'
	resources :airports
	resources :flights
	resources :passengers
	resources :bookings
	root 'flights#index'
end
