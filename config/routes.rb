Rails.application.routes.draw do

  get 'sessions/new'

  root "static_pages#home"
  
  get "/home_path", to: "static_pages#home"
  get "/help_path", to: "static_pages#help"
  get "/about_path", to: "static_pages#about"
  get "/contact_path", to: "static_pages#contact"
  get "/signup_path", to: "users#new"
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  resources :users, only: [:new, :create, :show]
end
