Rails.application.routes.draw do
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
