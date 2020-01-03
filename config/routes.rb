Rails.application.routes.draw do
  resources :tag_notes, only: [:index, :create, :update, :edit]
  resources :tags, only: [:index, :create, :update, :edit]
  resources :notes, only: [:index, :show, :create, :destroy, :update, :edit]
  resources :users, only: [:index, :create]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
