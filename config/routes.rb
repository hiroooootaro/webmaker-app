Rails.application.routes.draw do
  devise_for :users
  root to:"templates#index"
  resources :templates 
  resources :orders 
  post 'orders/:id' => 'orders#show'
  post '/orders/new/:id'=> 'orders#new'
end
