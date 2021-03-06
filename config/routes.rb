Rails.application.routes.draw do
  # devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'application#index'
  # root 'main#index'
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth' }
  resources :posts, only: [:index, :new, :create, :destroy]
end
