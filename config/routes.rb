Rails.application.routes.draw do
  root "countries#index"

  resources :countries, only: [:index, :show, :create, :destroy] do
    resources :cities
  end
end
