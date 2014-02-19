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

  #Nested Route(s)
  get     'users/:user_id/contacts' =>  'contacts#index'

  #Contact Routes
  # get     'contacts' => 'contacts#index'
  post    'contacts' => 'contacts#create'
  get     'contacts/new' => 'contacts#new'
  get     'contacts/:id/edit' => 'contacts#edit'
  get     'contacts/:id' => 'contacts#show'
  patch   'contacts/:id' => 'contacts#update'
  put     'contacts/:id' => 'contacts#update'
  delete  'contacts/:id' => 'contacts#destroy'

  #ContactShare Routes
  post    'contactshare/new' => 'contactshare#create'
  delete  'contactshare/:id' => 'contactshare#destroy'
end
