Rails.application.routes.draw do
  # Devise routes for admin users and regular users
  devise_for :admin_users, ActiveAdmin::Devise.config

  # ActiveAdmin routes
  ActiveAdmin.routes(self)

  resources :customers, only: :index
  root "customers#index"
  get "customers/alphabetized", to: "customers#alphabetized", as: "alphabetized_customers"
  get "customers/missing_email", to: "customers#missing_email", as: "missing_email_customers"

  # Health check route
  get "up" => "rails/health#show", as: :rails_health_check

  # Routes for Progressive Web App (PWA) features
  get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker
  get "manifest" => "rails/pwa#manifest", as: :pwa_manifest

  # Root path route
  # root "posts#index"
end
