Rails.application.routes.draw do

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

  devise_for :users
  root to: 'pages#home'

  resources :items

  # get '/admin', to: 'pages#admin', as: :admin
end
