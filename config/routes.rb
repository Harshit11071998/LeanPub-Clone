Rails.application.routes.draw do
  resources :orders
  resources :line_items
  resources :carts
  resources :books
  resources :charges
  devise_for :users
  get "search", to: "books#search"
  get "recent_book", to: "books#recent_book"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root "books#index"
end
