Rails.application.routes.draw do
  get 'stocks/search'
  devise_for :models
  root 'home#index'
  get 'my_portfolio', to:'models#my_portfolio'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
