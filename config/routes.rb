Rails.application.routes.draw do
  mount Ckeditor::Engine => '/ckeditor'
  devise_for :users
  root 'home#index'

  get 'login/new', as: :login

  resources :events, only: [:index, :show]
  resources :blog_posts, only: [:index, :show]

  resources :wods, only: [:index, :show]

  namespace :admin do
    root 'dashboard#index'
    resources :dashboard
    resources :blog_posts, except: :destroy
    resources :wods, except: [:show, :destroy]
  end
end
