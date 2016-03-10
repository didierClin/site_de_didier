Rails.application.routes.draw do

  root 'pages#index'

  get 'pages/about'

  get 'projects' => 'projects#index'

  get 'projects/show'

  namespace :admin do
    resources :projects

    root to: "projects#index"
  end

end
