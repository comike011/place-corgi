PlaceCorgi::Application.routes.draw do
  match "/incorgnito", :to => 'pages#incorgnito'
  match "/:width(/:height)", :to => 'pages#show', :as => :corgi
  match "/v/:width/:height", :to => 'pages#video'
  root :to => 'pages#index'
end
