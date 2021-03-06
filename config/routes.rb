Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :trucks, only: [:index, :create, :destroy]
  resources :reviews, only: [:index, :create, :destroy]
  resources :dishes, only: [:index, :create, :update, :destroy]

  post '/login', to: 'auth#login'
  get '/account', to: 'trucks#show'
  patch '/truck-update', to: 'trucks#update'
  get '/my-dishes', to: 'dishes#show'
  patch '/my-dishes-update', to: 'dishes#update'
end
