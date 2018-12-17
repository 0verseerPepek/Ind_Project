Rails.application.routes.draw do
  root 'users#index'
  post '/index' => 'users#Find_User'
  resources :users
end
