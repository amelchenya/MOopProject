Rails.application.routes.draw do
  
  devise_for :users
  root to:"products#index"
  
  resources :users_page
  resources :categories
  resources :products  do 
    resources :characteristics
  end

end
