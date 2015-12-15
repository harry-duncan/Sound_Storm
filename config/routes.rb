Rails.application.routes.draw do
	root :to => 'pages#home'
  get '/home' => 'pages#home'

  get '/users/edit' => 'users#edit'
  resources :users, :except => [:edit]

  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'

end
