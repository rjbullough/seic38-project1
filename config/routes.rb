Rails.application.routes.draw do
  root to: "pages#home"

  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'


  get '/today' => "pages#show"

  resources :entries
  resources :items do
    get 'search', on: :collection
  end
  resources :users, only: [:new, :create, :edit, :update]
end
