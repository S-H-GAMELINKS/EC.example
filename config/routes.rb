Rails.application.routes.draw do
  root 'web#index'
  get '/about', to: 'web#about'
  get '/contact', to: 'web#contact'
  devise_for :admins
  devise_for :users
  resources :products
  resources :carts, only: [:create]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
