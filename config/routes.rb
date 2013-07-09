Cookbook::Application.routes.draw do

  get "sessions/new"

  get "sessions/create"

  get "sessions/destroy"

  resources :users
  resources :sessions, only: [:create, :destroy]
  resources :ingredients
  resources :recipes
  get '/login', to: 'sessions#new'
  root to: "recipes#index"

end
