Rails.application.routes.draw do
  root to: "pages#home"

  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'


  get '/today' => 'pages#show'
  get '/today/update' => 'pages#update'
  post '/today' => 'pages#create'

  resources :entries
  resources :items 
  resources :users, only: [:new, :create, :edit, :update]
end
