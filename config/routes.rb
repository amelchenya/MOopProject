Rails.application.routes.draw do

  resources :items
  resources :baskets
  resources :carts
  devise_for :users
  root to:"searches#new"

  resources :users_page 
  resources :categories
  resources :searches
  resources :products  do 
    resources :characteristics
    resources :wains 
  end
      resources :wains 
      resources :boughts 
  get '/wains', to: 'wains#index'


end
