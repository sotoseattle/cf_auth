Rails.application.routes.draw do
  get 'signup' => 'users#new'
  get 'login' => 'sessions#new'
  get 'logout' => 'sessions#destroy'

  resources :sessions
  resources :users

  root 'posts#index'
  resources :posts
end
