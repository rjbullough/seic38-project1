Rails.application.routes.draw do
  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'

  get '/today' => 'pages#today'
  get '/add-entry' => 'pages#create'

  root to: "pages#home"

  resources :users, only: [:new, :create]
end
