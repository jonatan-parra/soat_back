Rails.application.routes.draw do
  resources :has_cards
  resources :insurances
  resources :vehicles
  resources :tariffs
  resources :cards
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
