Rails.application.routes.draw do
  namespace :admin do
    resources :preferences
    resources :access
    resources :settings
  end

  resources :artists do
    resources :songs, only: [:index, :show]
  end
  resources :songs

end
