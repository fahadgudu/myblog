Rails.application.routes.draw do

  get 'welcome/index'
  root 'welcome#index'

  resources :posts do
    resources :comments
  end

  resources :videos do
    resources :comments
  end

end