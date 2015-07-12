Rails.application.routes.draw do
  resources :profiles
  root to: 'profiles#show'

  get '/contact' => 'contact#new'
  post '/contact' => 'contact#create'
end
