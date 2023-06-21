Rails.application.routes.draw do
  resources :rental_properties do
    resources :nearest_stations, only: [:create, :update]
  end
end
