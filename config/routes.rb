Rails.application.routes.draw do

  get 'splash_page/index'
  get '/products', :to => 'products#index'
  get '/home', to: 'home#index'
  root 'splash_page#index'
  mount ShopifyApp::Engine, at: '/'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
