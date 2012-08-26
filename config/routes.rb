PlaceCorgi::Application.routes.draw do
  match "/:width(/:height)", :to => 'pages#show'
  match "/v/:width/:height", :to => 'pages#video'
  root :to => 'pages#index'
end
