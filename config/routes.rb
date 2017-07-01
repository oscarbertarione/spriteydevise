Rails.application.routes.draw do
  devise_for :users
  get 'home/index'

  resources :apuntes
  resources :leccions
  resources :plantillas
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :cursos
  resources :charges

  root 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
