Rails.application.routes.draw do
  root "countries#index"

  resources :countries, only: [:index, :show, :create, :destroy] do
    resources :cities, only: [:create, :destroy]
  end
end
