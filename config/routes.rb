Rails.application.routes.draw do
  devise_for :users
  root to: "top#index"
  resources :expenses, only: [:new, :create, :edit, :update, :destroy]
  resources :category, only: :index
  resources :month, only: :index
  resources :users, only: :show
  resources :users do
    member do
      get :following, :followers
    end
  end
  resources :relationships, only: [:create, :destroy]
  resources :searches, only: :index
end
