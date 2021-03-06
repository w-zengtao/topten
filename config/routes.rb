Rails.application.routes.draw do


  devise_for :users
  
  namespace :api, defaults: {format: 'json'} do
    scope module: :v1 do
      resources :users, only: [:create, :index, :show, :update]
      resources :user_tokens, only: [:create, :destroy]
      resources :nations do 
        collection do 
          get :list_cities
          get :list_districts
        end
      end 
    end
  end

  root to: 'api/v1/users#index'
end
