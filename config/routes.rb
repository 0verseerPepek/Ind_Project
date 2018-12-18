Rails.application.routes.draw do
  devise_for :users
  root 'post#index'
  post '/index' => 'userparam#Find_User'
  resources :userparam
  resources :post
end 
