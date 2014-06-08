Rails.application.routes.draw do
	resources :types

	resources :posts do
		collection do
		    get :tag
		 end
	end


	match '/users/:id', :to => 'users#show',    :as => :user,         :via => :get
	get '/users/:id/add_email' => 'users#add_email', via: [:get, :patch, :post], :as => :add_user_email

	root :to => "posts#index"
	devise_for :users, :controllers => {omniauth_callbacks: 'users/omniauth_callbacks' }
end
