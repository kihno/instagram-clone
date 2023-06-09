Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  get "/dashboard" => "users#index"

  resources :posts, only: [:new, :show, :create]

  root "public#homepage"
end
