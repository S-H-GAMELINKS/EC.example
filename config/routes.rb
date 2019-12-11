Rails.application.routes.draw do
  get 'web/index'
  get 'web/about'
  get 'web/contact'
  devise_for :admins
  devise_for :users
  resources :products
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
