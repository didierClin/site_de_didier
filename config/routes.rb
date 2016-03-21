Rails.application.routes.draw do

  resources :posts do
    resources :comments
  end

  get 'cv'  => 'element#show'

  devise_for :users
  root 'pages#index'

  get 'pages/about'

  get 'projects' => 'projects#index'

  get 'projects/show'

  get 'link' => 'pages#link'

  namespace :admin do
    resources :projects
    resources :elements

    root to: "projects#index"
  end

end
