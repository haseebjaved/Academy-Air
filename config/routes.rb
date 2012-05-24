Air::Application.routes.draw do
  
  get "reservations/new"

  get "reservations/create"

  get "reservations/destroy"

  get "sessions/new", :as => :sign_in
  get "signout" => 'sessions#destroy', :as => :sign_out
  post "sessions/create"

  resources :users
  
  resources :reservations

  get "/flights" => "flights#index"

  root to: 'flights#index'
  
  get '/mockup' => 'pages#home', :as => :mockup
  get '/help' => 'pages#help', :as => :help
  
end
