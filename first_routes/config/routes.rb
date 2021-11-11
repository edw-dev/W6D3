Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # get 'users', to: 'users#index'
  # get 'users/:id', to: 'users#show'
  # post 'users', to: 'users#create'
  # get 'users/:id', to: 'users#new'
  # patch 'users/:id', to: 'users#update'
  # delete 'users/:id', to: 'users#destroy'

  resources :users do 
    resources :user, only: [:index]
  end
  resources :user, only: [:show, :update, :create, :destroy, :new]

  resources :artworks, only: [:index, :show, :update, :destroy, :create]

  # resources :artwork_shares do 
  #   resources :art, only [:create, :destroy]
  # end
  # resources :artwork_shares, only: [:create, :destroy]
end
