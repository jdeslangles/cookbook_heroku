Cookbook::Application.routes.draw do

  get "sessions/new"

  get "sessions/create"

  get "sessions/destroy"

  resources :users
  resources :sessions, only: [:create, :destroy]
  resources :ingredients
  resources :recipes

  get '/search', to: 'search#index', as: 'new_search'
  post '/search', to: 'search#search', as: 'search'

  get '/login', to: 'sessions#new'
  root to: "recipes#index"

end
