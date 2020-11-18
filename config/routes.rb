Rails.application.routes.draw do
  
  devise_for :users
  root 'top#index'
  
  resources :users, only: [:edit, :update]
  resources :list, only: [:new, :create, :edit, :update, :destroy] do
    resources :cards, except: :index
  end

  
end
