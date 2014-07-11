Rails.application.routes.draw do
  namespace :api do
    resources :posts, only: [:index, :create]
    resources :tags, only: [:index]
  end

	resources :types

	resources :posts do
		collection do
		    get :tag
		 end
	end
	
	root :to => "posts#index"
	devise_for :users, :controllers => {omniauth_callbacks: 'users/omniauth_callbacks' }
end
