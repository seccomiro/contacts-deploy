Rails.application.routes.draw do
  resources :users
  resources :phones
  resources :addresses
  resources :contacts
  resources :companies
  resources :kinds
  root to: 'contacts#index'
end
