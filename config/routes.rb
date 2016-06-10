
Rails.application.routes.draw do
	
  #devise_for :users 

  post '/poll/create' , to: 'poll#create', as: 'poll_create'
  get '/poll/new', to:'poll#new', as: 'poll_new'
  get '/poll/show/:id', to:'poll#show', as: 'poll_show'
  post '/poll/vote', to:'poll#vote', as: 'poll_vote'
  get '/poll/index', to:'poll#index', as: 'poll_index'
  get '/poll/show_vote/:id', to:'poll#show_vote', as: 'poll_show_vote'
end
