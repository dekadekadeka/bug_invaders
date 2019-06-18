Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      resources :comments, only: [:index, :show, :new, :create, :edit, :update, :destroy]
      resources :games, only: [:index, :show, :destroy]
      resources :users, only: [:index, :show, :new, :create, :edit, :update, :destroy]
    end
  end
end
