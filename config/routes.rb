Rails.application.routes.draw do
  resources :clients
  resources :roles
	resources :users
	resources :sessions
	resources :applies
	resources :retains
	resources :taxes
	resources :retentions
	resources :details
	resources :bills
	resources :entities

	root to: 'home#index'

	get 'home/index'
	get 'sessions/new'
	
	get 'signup', to: 'users#new', as: 'signup'
	get 'showusers', to: 'users#show', as: 'showusers'
	get 'updateuser', to: 'users#update', as: 'updateuser'
	post 'deleteuser', to: 'users#delete', as: 'deleteuser'

	get 'login', to: 'sessions#new', as: 'login'
	get 'logout', to: 'sessions#destroy', as: 'logout'

	
end
