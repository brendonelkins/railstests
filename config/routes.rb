Rails.application.routes.draw do
  resources :ingredients
  resources :recipes
  resources :authors
  get 'signup'  => 'users#new' 
  resources :users
  get 'login' => 'sessions#new'
  post 'login' => 'sessions#create'
  delete 'logout' => 'sessions#destroy' 
  root 'authors#index'
end
