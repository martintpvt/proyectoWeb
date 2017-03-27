Rails.application.routes.draw do
	get 'home/index'

	root to: 'home#index'

	get 'sessions/new'

	resources :users
	resources :sessions

	get 'signup', to: 'users#new', as: 'signup'
	get 'showusers', to: 'users#show', as: 'showusers'
	get 'updateuser', to: 'users#update', as: 'updateuser'
	post 'deleteuser', to: 'users#delete', as: 'deleteuser'

	get 'login', to: 'sessions#new', as: 'login'
	get 'logout', to: 'sessions#destroy', as: 'logout'
end
