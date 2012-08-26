PlaceCorgi::Application.routes.draw do
  match "/incorgnito", :to => 'pages#incorgnito'
  match "/:width(/:height)", :to => 'pages#show'
  match "/v/:width/:height", :to => 'pages#video'
  root :to => 'pages#index'
end
