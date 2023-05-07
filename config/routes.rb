Rails.application.routes.draw do
  devise_for :users
  root to: "prototypes#index"
  get '/prototypes/:id/destroy', to: 'prototypes#destroy'
  get '/prototypes/:id/new', to: 'prototypes#new'

  resources :prototypes do
   resources :comments, only: [:create, :index]
  end

  resources :users, only: :show

end
