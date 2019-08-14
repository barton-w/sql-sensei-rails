Rails.application.routes.draw do
  resources :solutions, only: [:create, :destroy, :user] do
    collection do
      post "/user", to: "solutions#user"
    end
  end
  resources :users, only: [:create] do
    collection do
      post "/login", to: "users#login"
    end
  end
  resources :query, only: [:create]
  root "welcome#index"
end
