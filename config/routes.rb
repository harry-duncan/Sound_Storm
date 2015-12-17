Rails.application.routes.draw do
  get 'tracks/upload'

	root :to => 'pages#home'
  get '/home' => 'pages#home'

  get '/users/edit' => 'users#edit'
  get '/users/upgrade' => 'users#upgrade'
  resources :users, :except => [:edit]

  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'

  resources :tracks
  resources :reposts

end
