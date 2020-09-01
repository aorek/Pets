Rails.application.routes.draw do
  root 'home#index', as: 'home'

  get '/users/:id/pets/new/', to: 'pets#new', as: 'new_pet'
  post '/users/:id/pets/', to: 'pets#create', as: 'pets'

  resource :users

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
