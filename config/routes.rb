Rails.application.routes.draw do
  root 'palindromes#input', as: 'home'
  get 'palindromes/input'
  get 'palindromes/output'
  get 'sessions/new'
  get 'users/new'
  post 'users/create', to: 'users#create'
  get 'users/show'
  get 'users/update'
  post 'users/destroy', to: 'users#destroy'
  get 'sessions/new'
  post 'sessions/create', to: 'sessions#create'
  post 'sessions/destroy', to: 'sessions#destroy'
  resources :sessions
  resources :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
