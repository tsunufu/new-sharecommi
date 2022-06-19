Rails.application.routes.draw do
  get 'sessions/new'

  root 'home#top'
  resources :users, :only => [:show, :new, :edit, :update, :destroy]
  get 'login', to: "sessions#new"
  post 'login', to: "sessions#create"
  delete 'logout', to: "sessions#destroy"
  resource :posts
end
