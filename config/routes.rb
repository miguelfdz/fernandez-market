Rails.application.routes.draw do
  resources :carts
  resources :products
  devise_for :users
  post '/cart/:id', to: 'carts#show', as: 'user'
  root 'pages#index'
end
