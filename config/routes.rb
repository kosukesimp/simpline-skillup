Rails.application.routes.draw do

  resources :answers
  resources :posts
  resources :users
  get 'sessions/new'

  resources :registrations, only: [:new, :create]
  resource :sessions, only: [:new, :create, :destroy]
  resource :users, only: [:index, :show]
  resource :posts, only: [:index, :show, :edit, :new]
  resource :answers, only: [:index, :show, :edit, :new]
  root to: 'registrations#new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
