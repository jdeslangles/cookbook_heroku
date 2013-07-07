Cookbook::Application.routes.draw do

  resources :ingredients

  resources :recipes

  root to: "recipes#index"

end
