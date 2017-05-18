Rails.application.routes.draw do
  get 'static_pages/portfolio'
  get 'static_pages/coming_soon'
  get 'static_pages/contact'
  get 'static_pages/resume'

  devise_for :users
  root 'contacts#index'
  get 'users/new'
  resources :contacts
end
