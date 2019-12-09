Rails.application.routes.draw do
  resources :wishlists
  #get 'sessions/new'
  #get 'sessions/create'
  #get 'sessions/destroy'
  resources :users
  resources :line_items
  resources :carts
#  get 'store/index'
  root 'store#index', as: 'store_index'
  resources :products
  resources :orders

   get 'login', to: 'sessions#new'
   post 'login', to: 'sessions#create'
   get 'logout', to: 'sessions#destroy'
   delete 'logout', to: 'sessions#new'
    
    
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
