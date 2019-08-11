Rails.application.routes.draw do
  resources :users, only: [:create] do
    collection do
      post "/login", to: "users#login"
    end
  end
  resources :query, only: [:create]
  root "welcome#index"
end
