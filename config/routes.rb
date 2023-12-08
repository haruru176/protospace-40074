Rails.application.routes.draw do
  devise_for :users
  get 'prototypes/index'
  root to: "prototypes#index"
  resources :prototypes do
    resources :comments, only: [:index, :create]
  end
  resources :users, only: [:show]
end


# resources :prototypes do
#   resources :comments, only: [:index, :create]
# end