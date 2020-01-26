Rails.application.routes.draw do
  root to: 'application#index'

  resources :weighings, only: :index
end
