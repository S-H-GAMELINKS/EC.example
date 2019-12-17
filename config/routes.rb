Rails.application.routes.draw do
  get 'search/search'
  root 'web#index'
  get '/about', to: 'web#about'
  get '/contact', to: 'web#contact'
  devise_for :admin_users
  devise_for :users
  resources :products, only: [:index, :show]
  namespace :admins do
    resources :products
  end
  get '/carts', to: 'carts#index'
  post '/carts/add', to: 'carts#add'
  post '/carts/update', to: 'carts#update'
  delete '/carts/remove', to: 'carts#remove'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
