Rails.application.routes.draw do
  root 'web#index'
  get '/about', to: 'web#about'
  get '/contact', to: 'web#contact'
  devise_for :admins
  devise_for :users
  resources :products
  get '/carts', to: 'carts#index'
  post '/carts/add', to: 'carts#add'
  post '/carts/update', to: 'carts#update'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
