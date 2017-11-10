Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'customers/missingEmail', to: 'customers#missingEmail', as: 'missingEmail'
  get 'customers/alphabetized', to: 'customers#alphabetized', as: 'alphabetized'
  root 'customers#index'
end
