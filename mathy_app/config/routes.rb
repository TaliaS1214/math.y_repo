Rails.application.routes.draw do

  # Welcome Page
  root('welcome#index')

  # Resources and Articles
  resources :subjects do
    resources :articles
  end

  # Sessions
  get '/login'   => 'user_sessions#new', as: 'login'
  post 'sessions'=> 'user_sessions#create'
  get '/logout'  => 'user_sessions#destroy', as: 'logout'

  # Users
  resources :users

end
