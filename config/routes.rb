Rails.application.routes.draw do
  resources :champions, only: [:new, :create, :index]
  resources :weapons, only: [:new, :create, :index]
  resources :instances, only: [:new, :create, :index]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
