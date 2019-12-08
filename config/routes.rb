Rails.application.routes.draw do
  resources :line_items
  resources :carts
#  get 'store/index'
  root 'store#index', as: 'store_index'
  resources :products
  resources :orders
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
