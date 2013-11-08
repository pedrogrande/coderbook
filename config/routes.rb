Coderbook::Application.routes.draw do
  mount RailsAdmin::Engine => '/admin', :as => 'rails_admin'
  resources :groups do
  	member do
  		get :leave
  		get :join
  		get :remove_user_from
  	end
  end

  resources :user_profiles

  resources :posts

  root :to => "home#index"
  devise_for :users, :controllers => {:registrations => "registrations"}
  resources :users
end