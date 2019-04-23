Rails.application.routes.draw do
  resources :events
  resources :users
  resources :sessions
  get 'login', to: 'sessions#new', as: "login"
  get 'logout', to: 'sessions#destroy', as: "logout"
  get 'signup', to: 'users#new', as: "signup"
end
