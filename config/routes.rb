Rails.application.routes.draw do
  devise_for :users
  resources :users
  resources :phones
  resources :addresses
  resources :contacts do
    post :users, on: :member
  end
  resources :companies
  resources :kinds
  root to: 'contacts#index'
end
