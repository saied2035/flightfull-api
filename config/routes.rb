Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  post 'auth/login', to: "auth#login"
  post 'auth/signup', to: "auth#signup"
  post 'auth/login_check', to: "auth#logged_in?"
  delete 'auth/signout', to: "auth#signout"

  resources :airlines, only: [:create, :destroy]
  resources :reservations, only: [:index, :create, :destroy]
  # Defines the root path route ("/")
  # root "articles#index"
end
