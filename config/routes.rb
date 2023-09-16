Rails.application.routes.draw do
  get 'start/index'
  resources :orgs
  resources :tovars
  resources :reitings
  get 'home/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
