Rails.application.routes.draw do
  devise_for :users
  root to:"templates#index"
  resources :templates  do
    resources :orders do
      collection do
        get :template_select 
        post :template_select 
      end

      member do
        get :category_select 
        post :category_select 
      end
    end
  end
end
