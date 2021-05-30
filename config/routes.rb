Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'books#index'
  resources :books, only: [:show, :index]
  namespace :admin do
    resources :books
  end
end
