# frozen_string_literal: true

Rails.application.routes.draw do
  resources :plants
  resources :gardens
  devise_scope :user do
    root to: 'devise/sessions#new'
  end

  devise_for :users, controllers: { registrations: 'registrations' }
end
