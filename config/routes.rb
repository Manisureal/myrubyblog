Rails.application.routes.draw do

  root 'home#index'
  resources :posts
  resources :categories
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

end
