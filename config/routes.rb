Rails.application.routes.draw do
  root 'contacts#index'
  get 'users/new'
  resources :contacts
end
