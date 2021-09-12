Rails.application.routes.draw do
  get 'patients/index'
  get 'patients/new'
  devise_for :users
  get 'messages/index'
  root to: "messages#index"
  resources :patients, only: [:index, :new, :create, :edit, :update, :destroy]
end
