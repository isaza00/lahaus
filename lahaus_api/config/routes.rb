Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace :api, defaults: { format: :json } do
    namespace :v1 do

      post "/login", to: "users#login"
      get "/auto_login", to: "users#auto_login"

      resources :users do
        resources :properties
      end

      get 'properties' => 'properties#index', as: :properties
      delete '/properties/:property_id', to: 'properties#destroy'

      get '/properties/:property_id/photos', to: 'photos#index'
      get '/photos/photo_id', to: 'photos#show'
      delete '/photos/photo_id', to: 'photos#destroy'
      post '/properties/:property_id/photos', to: "photos#create"


    end
  end
end
