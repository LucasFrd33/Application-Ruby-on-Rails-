Rails.application.routes.draw do
  get "/latestsneakers", to: "sneakers#latest"
  get "/upcommingsneakers", to: "sneakers#index"
  root to: "sneakers#index"
  resources :sneakers
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
