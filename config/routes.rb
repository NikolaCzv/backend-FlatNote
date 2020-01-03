Rails.application.routes.draw do
  resources :tag_notes
  resources :tags
  resources :notes
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
