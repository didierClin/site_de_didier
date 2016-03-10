Rails.application.routes.draw do

  namespace :admin do
    resources :projects

    root to: "projects#index"
  end

  root 'pages#index'

  get 'pages/about'

  get 'projects' => 'projects#index'

  get 'projects/show'

end
