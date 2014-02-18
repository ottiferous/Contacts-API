SampleApp::Application.routes.draw do
  # resources :users
  resources :authorize, only: [:create, :destroy, :index, :show, :update]

  get     'users' => 'users#index'
  post    'users' => 'users#create'
  get     'users/new' => 'users#new'
  get     'users/:id/edit' => 'user#edit'
  get     'users/:id' => 'users#show'
  patch   'users/:id' => 'users#update'
  put     'users/:id' => 'users#update'
  delete  'users/:id' => 'users#destroy'
end
