Rails.application.routes.draw do
  root to: 'restaurants#index'
  resources :restaurants do
    resources :reviews, only: %i[new create index]
  end

  resources :restaurants
end
