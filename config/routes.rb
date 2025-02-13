Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'sessions#new'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'
  get '/welcome', to: 'sessions#welcome'
  get '/show', to: 'secrets#show'
  resources :secrets, only: [:show]

end
