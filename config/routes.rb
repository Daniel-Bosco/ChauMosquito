Rails.application.routes.draw do
  devise_for :users
  resources :orders
  resources :purchases
  resources :carts
  resources :stocks
  resources :products do
    collection do
      get :shop
    end
  end
  resources :product_types
  resources :brands
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get 'shop', to: 'products#shop'

  root to: "products#shop"
  
end
