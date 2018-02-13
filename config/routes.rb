Rails.application.routes.draw do

  get 'pages/about'

  get 'pages/contact'

  get 'pages/resources'

  root 'home#index'
  resources :posts
  resources :categories
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

end
