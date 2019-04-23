Rails.application.routes.draw do
  resources :events
  resources :users
  resources :sessions
  get 'login', to: 'sessions#new', as: "login"
  get 'logout', to: 'sessions#destroy', as: "logout"
  get 'signup', to: 'users#new', as: "signup"
  get 'events/:id/join', to: 'events#join', as: "join"
  get 'events/:id/leave', to: 'events#leave', as: "leave"
end
