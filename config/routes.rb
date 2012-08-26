PlaceCorgi::Application.routes.draw do
  match "/:width/:height", :to => 'pages#show', :as => :corgi
  match "/v/:width/:height", :to => 'pages#video', :as => :corgi_video
  root :to => 'pages#index'
end
