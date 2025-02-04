# frozen_string_literal: true

Rails.application.routes.draw do
  resources :statuses
  resources :cards
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  resources :home, only: :index

  # Defines the root path route ("/")
  root 'home#index'
end
