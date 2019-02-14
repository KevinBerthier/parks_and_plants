Rails.application.routes.draw do
  resources :gardens, only: [:show] do
    resources :plants, only: [:create]
  end
  resources :plants, only: [:destroy] do
    resources :plant_tags, only: [:new, :create]
  end

  resources :tags, only: [:show]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
