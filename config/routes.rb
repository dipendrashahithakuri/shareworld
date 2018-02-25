Rails.application.routes.draw do

  devise_for :users
  root 'ideas#index'

  resources :ideas
  
  get 'about' => 'static_pages#about'
  
  get 'random' => 'static_pages#random'

end
