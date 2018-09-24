Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # Register
  resources :account,only: [:new,:create]

  # Login
  resources :session,only: [:new,:create,:destroy]

  #admin
  resources	:admin

  #member
  resources	:member
end
