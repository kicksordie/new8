Rails.application.routes.draw do
  resources :professors do
    resources :schools
  end

  resources :schools

  devise_for :users
  root 'welcome#index'
  # resources :professors
end
