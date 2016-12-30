Rails.application.routes.draw do

  get 'temples/:temple_id/nikkis/new' => 'nikkis#new'
  post 'temples/:temple_id/nikkis' => 'nikkis#create'

  devise_for :users, controllers: {
  registrations: 'users/registrations', omniauth_callbacks: "omniauth_callbacks"
}

  root  'nikkis#index'

  resources :nikkis
  get   'users/:id'   =>  'users#show'
  get 'info/privacy' => 'info#privacy'
  get 'temples/search/' => 'temples#search'
  get 'temples/:id' => 'temples#show'

end
