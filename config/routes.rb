Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      resources :comments, only: [:index]
      resources :games, only: [:index]
      resources :users, only: [:index]
    end
  end
end
