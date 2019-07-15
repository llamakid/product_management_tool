Rails.application.routes.draw do
  resources :product_properties
  resources :properties
  resources :products

  root 'products#index'
end
