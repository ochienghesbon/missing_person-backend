Rails.application.routes.draw do
  resources :users, only: [:create, :show]
  resources :people, only: [:index, :show, :create, :update, :destroy]
  delete "/logout", to: "sessions#destroy"
  post "/login", to: "sessions#create"
  get "*path", to: "fallback#index", constraints: ->(req) { !req.xhr? && req.format.html? }
end
