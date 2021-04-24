Rails.application.routes.draw do
  resources :posts
  devise_for :users
  root 'home#index'

  post 'like/:id' => 'likes#create', as: 'create_like'
end
