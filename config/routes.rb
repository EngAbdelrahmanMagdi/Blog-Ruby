Rails.application.routes.draw do
  get 'auth/login', to: 'auth#login', as: 'login'
  get 'auth/register', to: 'auth#register', as: 'register'
  get 'auth/logout', to: 'auth#logout', as: 'logout'
  post 'registerform', to: 'auth#registerform', as: 'registerform'
  post 'loginform', to: 'auth#loginform', as: 'loginform'

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "posts#index"
end
