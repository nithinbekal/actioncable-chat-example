Rails.application.routes.draw do
  resources :messages, only: [:index, :create]
  resources :sessions, only: :create

  root 'sessions#new'
end
