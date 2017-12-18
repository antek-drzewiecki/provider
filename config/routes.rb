Rails.application.routes.draw do
  resources :posts
  get 'home/index'

  devise_for :users
  use_doorkeeper

  namespace :api do
    namespace :v1 do
      resource :users do
        get :me, on: :collection
      end

    end
  end

  root 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
