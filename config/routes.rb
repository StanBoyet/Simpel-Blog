Rails.application.routes.draw do
	resources :types

	resources :posts do
		collection do
		    get :tag
		 end
	end
	
	root :to => "posts#index"
	devise_for :users, :controllers => {omniauth_callbacks: 'users/omniauth_callbacks' }
end
