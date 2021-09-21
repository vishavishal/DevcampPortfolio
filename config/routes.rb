Rails.application.routes.draw do
  resources :portfolios
  resources :skills
  resources :blogs do
    member do
      get :toggle_status
    end
  end
  get 'query/:something', to: 'blogs#something'
  get 'blogs/*anything', to: 'blogs#anything'
  root to:'blogs#index'
end