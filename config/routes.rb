PlaceCorgi::Application.routes.draw do
  match "/:width/:height", :to => 'pages#show'
  root :to => 'pages#index'
end
