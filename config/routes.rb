Rails.application.routes.draw do
  devise_for :users
  root to:"templates#index"
  resources :templates 
end
