Rails.application.routes.draw do
  get 'card_game/war'

  get 'static_pages/portfolio'
  get 'static_pages/coming_soon'
  get 'static_pages/contact'
  get 'static_pages/resume'
    get 'static_pages/home'

  devise_for :users
  # root 'contacts#index'
  root 'static_pages#home'
  get 'users/new'
  resources :contacts
end
