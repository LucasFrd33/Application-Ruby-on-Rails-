Rails.application.routes.draw do
  resources :sneakers
  resources :stories
  get '/test', to: 'pages#test'
  get '/sneakers'
  # TseststtstrtÒ
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
