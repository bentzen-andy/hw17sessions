Rails.application.routes.draw do
  get '/', to: 'home#index'
  get '/home', to: 'home#index'
  get '/login', to: 'login#index'
  get '/preferences', to: 'preferences#index'
end
