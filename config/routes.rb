Rails.application.routes.draw do
  # Add your extension routes here
  resources :locations
  namespace :admin do
    resources :locations
  end
end
