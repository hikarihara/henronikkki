Rails.application.routes.draw do
  devise_for :users
  root  'nikkis#index'
  get 'nikkis' => 'nikkis#index'
  get 'nikkis/new' => 'nikkis#new'
  post  'nikkis'      =>  'nikkis#create'
  get   'users/:id'   =>  'users#show'
  delete  'nikkis/:id'  => 'nikkis#destroy'
  patch   'nikkis/:id'  => 'nikkis#update'
  get   'nikkis/:id/edit'  => 'nikkis#edit'
  get 'temples/search/' => 'temples#search'
end
