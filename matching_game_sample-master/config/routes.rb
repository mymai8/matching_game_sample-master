Rails.application.routes.draw do
  devise_for :users
  root to: 'coaches#index'
  resources :users, only:[:edit, :update]
  resources :coaches do
    resources :orders, only: [:index, :create]
    #resources :comments, only: [:create, :delete]
  end
end
