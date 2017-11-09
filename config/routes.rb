Rails.application.routes.draw do
  resources :insurances
  get 'welcome/index'

  root 'welcome#index'
  resources :appointments
  resources :vehicles
  resources :customers
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
