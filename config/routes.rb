Rails.application.routes.draw do
  devise_for :users,
    controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :instruments, only: [:index, :show]

  resources :users, only: [:show]

  resources :bookings, only: [:create, :index] do
    resources :reviews, only: [:create]
  end

  namespace :owner do
    resources :instruments, only: [:new, :create, :index, :edit, :update, :destroy]
    resources :bookings, only: [:index]
  end
end
