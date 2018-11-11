Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :presidents, only: [:show, :index]
      # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    end
  end
end
