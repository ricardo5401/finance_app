Rails.application.routes.draw do
  devise_for :users , path: '', path_names: { sign_in: 'login', sign_out: 'logout', password: 'password', 
    confirmation: 'verification', unlock: 'unblock', registration: 'register', sign_up: 'singup' }

  resources :activities
  resources :accounts
  resources :people

  root 'pages#dashboard'
  get '/profile'    => "pages#profile"
  get '/dashboard'  => "pages#dashboard"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
