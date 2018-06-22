Rails.application.routes.draw do
  devise_for :users
  root 'projects#index'
  resources :home, only: :index
  resources :users
  resources :projects
  resources :tasks
  resources :assignments, only: %i[create destroy]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
