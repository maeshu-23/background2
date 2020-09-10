Rails.application.routes.draw do
  devise_for :users
  root to: "home#index"
  post '/home/guest_sign_in', to: 'home#new_guest'
  resources :users
  resources :tweets do
    resource :favorites, only: [:create, :destroy]
  end
end
