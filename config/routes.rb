Rails.application.routes.draw do
  mount Attachinary::Engine => "/attachinary"

  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks', registrations: "registrations" }
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :instruments, only: [:index, :show] do
    resources :bookings, only: :create
  end

  resources :users, only: :show do
    resources :bookings, only: :index
  end

  resources :bookings, only: :index do
    resources :reviews, only: [:create]
  end

  namespace :owner do
    resources :instruments, only: [:new, :create, :index, :edit, :update, :destroy]
    resources :bookings, only: [:index]
  end

end
