Rails.application.routes.draw do
  get '/', to: 'home#index'
  get '/home', to: 'home#index'
  get '/login', to: 'login#index'
  get '/log-out', to: 'login#logout'
  post '/login', to: 'login#processed'
  get '/preferences', to: 'preferences#index'
  post '/preferences', to: 'preferences#displayPreference'
  get '/preferences/error', to: 'preferences#error'
end
