Glamazon::Application.routes.draw do
  devise_for :users
  root :to => "home#index"
  match "/seasons/:id" => "seasons#show"
end