Rails.application.routes.draw do
  
  root "pages#index"
  get "pages/help"
  
  resources :users
  resources :topics
  resources :comments
  
  get "favorites/index"
  post "/favorites", to: "favorites#create"
  
  get "/login", to: "session#new"
  post "/login", to: "session#create"
  delete "/logout", to: "session#destroy"
  
  
  
end
