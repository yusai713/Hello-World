Rails.application.routes.draw do
  resources :users
  get '/intro', to: 'intro#index'
  get '/table', to: 'table#index'
end
