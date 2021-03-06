Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'pages#home'

  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      get '/quotes/random', to: 'quotes#random'
      resources :quotes, only: [ :index, :show, :create, :update, :destroy]
    end
  end
end
