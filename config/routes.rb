Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root "home#index"

  get "/home", to: "home#index"

  resources :owner2s, only: [:new, :create, :edit, :update, :show, :destroy]
  resources :renter2s, only: [:new, :create, :edit, :update, :show, :destroy]

  get '/owner2/login', to: 'owner2sessions#login'
  post '/owner2/login', to: 'owner2sessions#create'
  post '/owner2/logout', to: 'owner2sessions#destroy'
  get '/owner2/logout', to: 'owner2sessions#destroy'

  get '/renter2/login', to: 'renter2sessions#login'
  post '/renter2/login', to: 'renter2sessions#create'
  post '/renter2/logout', to: 'renter2sessions#destroy'
  get '/renter2/logout', to: 'renter2sessions#destroy'
  

  # Defines the root path route ("/")
  # root "articles#index"
end
