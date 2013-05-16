Glamazon::Application.routes.draw do
  resources :queens
  devise_for :users
  root :to => "home#index"
  match "/seasons/:id" => "seasons#show"
  resources :comments, :only => ['create']
end