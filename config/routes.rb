Rails.application.routes.draw do


  devise_for :users, :controlllers => { registrations: 'registrations' }
  resources :events
  resources :event_attendings, only: [:create, :destroy]

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root "events#index"
end
