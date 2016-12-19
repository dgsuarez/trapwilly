Rails.application.routes.draw do
  resources :text_images
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root "text_images#index"

  require 'sidekiq/web'
  mount Sidekiq::Web => '/sidekiq'
end
