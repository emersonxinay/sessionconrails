Rails.application.routes.draw do
  resources :posts
  get 'pages/setv'
  get 'pages/getv'
  root to: 'posts#index'
  get 'users/sign_up', to: 'users#new'
  get 'users/sign_in', to: 'sessions#new'
  post 'users', to: 'users#create'
  resources :sessions, only: [:new, :create, :destroy]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
