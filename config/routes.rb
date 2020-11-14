Rails.application.routes.draw do
  devise_for :users
  root to:"templates#index"
  resources :templates  do
    resources :orders 
  end
  get '/orders/template_select', to: 'orders#template_select', as: 'template_select'
  get '/orders/:id/order_confirm', to: 'orders#order_confirm', as: 'order_confirm'
  get '/templates/order_check', to: 'templates#order_check', as: 'order_check'
end
