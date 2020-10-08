Rails.application.routes.draw do
  devise_for :users
  root to:"templates#index"
  resources :templates 
  resources :orders do
    collection do
      post 'template'
    end
  end
end
