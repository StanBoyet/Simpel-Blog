Rails.application.routes.draw do
	resources :types

	resources :posts

	match '/users/:id', :to => 'users#show',    :as => :user,         :via => :get

	root :to => "posts#index"
	devise_for :users, :controllers => {omniauth_callbacks: 'users/omniauth_callbacks' }
end
