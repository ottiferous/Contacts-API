SampleApp::Application.routes.draw do
  # resources :users

  resources :authorize, only: [:create, :destroy, :index, :show, :update]

  # Creates the /users/:id/contacts setup without all that typing.
  resources :users, except: [:edit, :new] do
    get 'index', on: :member
  end

  resources :contacts, except: [:edit, :new]

  get     'users/:user_id/contacts' =>  'contacts#index'

  resources :contactshares do
    member do
      post 'contactshare/new', :to => 'contactshare#new'
      delete 'contactshare/:id', :to => 'contactshare#destroy'
    end
  end

  root :to => 'users#index'

end
