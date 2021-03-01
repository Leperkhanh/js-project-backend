Rails.application.routes.draw do
  devise_for :users, path: '', path_names: {
    sign_in: 'login',
    sign_out: 'logout',
    registration: 'signup'
  },
  controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }

  resources :users, only: [:index, :show] do
    resources :lists do 
      resources :tasks
    end
  end

  resources :users, only: [:index, :show] do 
    resources :tasks
  end

  resources :lists do 
    resources :tasks
  end

  namespace :api do 
    namespace :v1 do 
      resources :lists
    end
  end
  
  namespace :api do 
    namespace :v1 do 
      resources :tasks
    end
  end
end