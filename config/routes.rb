Rails.application.routes.draw do
  devise_for :users
  root 'projects#index'
  resources :users, only: %i[show edit update]
  resources :projects
  resources :tasks, only: %i[create edit update destroy]
  resources :assignments, only: %i[create destroy]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
