Rails.application.routes.draw do
	get 'flights/index'
	resources :airports
	resources :flights
	
	root 'flights#index'
end
