Rails.application.routes.draw do
  root to: 'application#index'

  namespace :api do
    resources :weighings, only: :index
  end
end
