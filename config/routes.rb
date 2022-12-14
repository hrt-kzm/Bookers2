Rails.application.routes.draw do
  devise_for :users
  resources :books, only: [:new, :show, :edit, :update, :index, :create, :destroy]
  resources :users, only: [:show, :edit, :update, :index]
  post 'users' => 'books#create'
  get 'homes/top'
  get 'home/about' => 'homes#about', as: 'about'
  root to: 'homes#top'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
