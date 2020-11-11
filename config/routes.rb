Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  namespace :api do
    namespace :v1 do
      resources :contacts, [:index,:create]
      resources :groceries, [:index,:create]
      resources :notes, [:index,:create]
      resources :users, only: [:index,:create]
    end
  end

end
