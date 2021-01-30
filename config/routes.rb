Rails.application.routes.draw do
  devise_for :users
  root to: 'tuxes#home'
  # tuxes  GET /tuxes tuxes#index
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :tuxes do
    resources :bookings, only: [:new, :create, :delete]
  end
end
