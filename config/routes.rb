Rails.application.routes.draw do
  devise_for :users , path: '', path_names: { sign_in: 'login', sign_out: 'logout', password: 'password', 
    confirmation: 'verification', unlock: 'unblock', registration: 'register', sign_up: 'singup' }

  devise_scope :user do
    authenticated :user do
      #root 'books#index'
      root 'pages#dashboard'
    end

    unauthenticated do
      root 'pages#index', as: :unauthenticated_root
    end
  end

  get '/dashboard' => "pages#dashboard"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
