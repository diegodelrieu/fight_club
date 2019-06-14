Rails.application.routes.draw do
  get '/fights', to: 'fights#index', as: 'index'
  get '/fights/initialize_fight', to: 'fights#initialize_fight', as: 'initialize_fight'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
