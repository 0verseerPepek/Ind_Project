Rails.application.routes.draw do
  devise_for :users
  root 'post#index'
  post '/index' => 'userparam#Find_User'
  post '/create' => 'post#create'

  resources :userparam
  resources :post

end 
