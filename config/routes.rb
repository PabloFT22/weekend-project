Rails.application.routes.draw do
  resources :woobly_snacks
  resources :wooblies
  resources :snacks
  # resources :users

  get '/snacks', to: 'snacks#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
