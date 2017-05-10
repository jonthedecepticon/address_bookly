Rails.application.routes.draw do
  devise_for :users
  root 'contacts#index'
  get 'users/new'
  resources :contacts
end
