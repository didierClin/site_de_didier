Rails.application.routes.draw do

  devise_for :users
  root 'pages#index'

  get 'pages/about'

  get 'projects' => 'projects#index'

  get 'projects/show'

  namespace :admin do
    resources :projects
    resources :elements

    root to: "projects#index"
  end

end
