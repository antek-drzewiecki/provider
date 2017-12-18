Rails.application.routes.draw do
  devise_for :users
  use_doorkeeper


  namespace :api do
    namespace :v1 do
      resource :users do
        get :me, on: :collection
      end

    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
