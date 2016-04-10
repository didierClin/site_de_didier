Rails.application.routes.draw do

  resources :posts do
    resources :comments
  end

  get 'todo' => 'tasks#index'
  resources :tasks

  devise_for :users

  get 'cv'  => 'element#show'

  get 'about' => 'pages#about'

  get 'contact' => 'pages#contact'

  get 'projects' => 'projects#index'

  get 'projects/show'

  get 'link' => 'pages#link'

  root 'pages#index'

  namespace :admin do
    resources :projects
    resources :elements

    root to: "projects#index"
  end

end
