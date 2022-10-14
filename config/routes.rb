Rails.application.routes.draw do
  resources :users, only: [:index, :create, :show]
  resources :people, only: [:index, :show, :create, :update, :destroy]


  delete "/logout", to: "sessions#destroy"
  get "/me", to: "users#show"
  post "/login", to: "sessions#create"
  post "/signup", to: "users#create"

  get "*path", to: "fallback#index", constraints: ->(req) { !req.xhr? && req.format.html? }
end
