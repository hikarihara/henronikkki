Rails.application.routes.draw do

  get 'temples/:temple_id/nikkis/new' => 'nikkis#new'
  post 'temples/:temple_id/nikkis' => 'nikkis#create'

  devise_for :users, controllers: {
  registrations: 'users/registrations'
}
  root  'nikkis#index'
  get 'nikkis' => 'nikkis#index'
  get 'nikkis/new' => 'nikkis#new'
  post  'nikkis'      =>  'nikkis#create'
  get   'users/:id'   =>  'users#show'
  delete  'nikkis/:id'  => 'nikkis#destroy'
  patch   'nikkis/:id'  => 'nikkis#update'
  get   'nikkis/:id/edit'  => 'nikkis#edit'
  get 'temples/search/' => 'temples#search'
  get 'temples/:id' => 'temples#show'

end
