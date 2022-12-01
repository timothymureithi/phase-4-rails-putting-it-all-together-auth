Rails.application.routes.draw do
  resources :recipes, only: [:index, :create]
  post "/login", to: "sessions#create"
  post "/signup", to: "users#create"
  get "/me", to: "users#show"
  delete "/logout", to: "sessions#destroy"

  #resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
