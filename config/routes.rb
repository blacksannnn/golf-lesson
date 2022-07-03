Rails.application.routes.draw do
  devise_for :users
  root to: "lessons#index"
  # root to: "users#index"
  resources :lessons, only: [:new,:create]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
