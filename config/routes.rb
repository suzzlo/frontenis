Frontenis::Application.routes.draw do

  get "statistics/index"
  get 'statistics/user/:id' => 'statistics#user'
  get "rankings/index"

  resources :championships
  resources :games
  resources :users

  root :to => 'games#index'

end
