Rails.application.routes.draw do
  devise_for :users
  get "/latestsneakers", to: "sneakers#latest"
  get "/upcommingsneakers", to: "sneakers#index"
  resources :users
  resources :sneakers
  root to: "sneakers#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
