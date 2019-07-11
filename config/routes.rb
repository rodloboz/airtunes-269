Rails.application.routes.draw do
  root to: 'artists#index'

  resources :artists, only: :show do
    resources :albums, only: [:new, :create]
    resources :tags, controller: :artist_tags, only: [:new, :create]
  end
  resources :albums, only: :destroy
  resources :artist_tags, only: :destroy
end
