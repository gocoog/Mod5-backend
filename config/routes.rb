Rails.application.routes.draw do
  resources :transactions
  resources :wallets
  resources :tasks
  resources :goals
  resources :users

  # resources :users do
  #   resources :wallets
  # end
  post '/signup', to: 'users#create'
  post '/login', to: 'sessions#create'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
