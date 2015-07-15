Rails.application.routes.draw do
  resources :messages, only: [:index, :create]
  resources :sessions, only: :index

  root 'pages#home'
end
