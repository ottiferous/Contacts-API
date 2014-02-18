SampleApp::Application.routes.draw do
  # resources :users

  resources :authorize, only: [:create, :destroy, :index, :show, :update]

  #User Routes
  get     '/'     => 'users#index'
  get     'index' => 'users#index'
  get     'users' => 'users#index'
  post    'users' => 'users#create'
  get     'users/new' => 'users#new'
  get     'users/:id/edit' => 'user#edit'
  get     'users/:id' => 'users#show'
  patch   'users/:id' => 'users#update'
  put     'users/:id' => 'users#update'
  delete  'users/:id' => 'users#destroy'

  #Contact Routes
  get     'contact' => 'contact#index'
  post    'contact' => 'contact#create'
  get     'contact/new' => 'contact#new'
  get     'contact/:id/edit' => 'user#edit'
  get     'contact/:id' => 'contact#show'
  patch   'contact/:id' => 'contact#update'
  put     'contact/:id' => 'contact#update'
  delete  'contact/:id' => 'contact#destroy'

end
