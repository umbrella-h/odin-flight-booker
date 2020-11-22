Rails.application.routes.draw do
	get 'flights/index'
	resources :airports
	resources :flights
	resources :passengers do
		resources :bookings
	end	
	root 'flights#index'
end
