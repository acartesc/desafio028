Rails.application.routes.draw do
  resources :areas
  resources :companies
  root to: 'companies#index'
end
