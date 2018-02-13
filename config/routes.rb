Rails.application.routes.draw do

#Static Pages Routes
  get 'about', to: 'pages#about'
  get 'contact', to: 'pages#contact'
  get 'resources', to: 'pages#resources'
#Default Homepage route
  root 'home#index'
#All other controllers routes
  resources :posts
  resources :categories
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

end
