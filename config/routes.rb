Rails.application.routes.draw do
  resources :areas
  resources :companies do
    resources :employees, only: [:create]
  end

  root to: 'companies#index'
end
