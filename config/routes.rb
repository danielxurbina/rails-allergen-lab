Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :recipes, only: [:index, :new, :create]
  resources :ingredients, only: [:index, :show]
  resources :users, only: [:show, :destroy, :new, :create, :index]
end
