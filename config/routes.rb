# frozen_string_literal: true


Rails.application.routes.draw do

   devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }
 get "users" => "users#index"
 get "users/:id" => "users#show"

  resources :rooms do
   resources :reservations
  end
  
  get '/' => "home#top"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
