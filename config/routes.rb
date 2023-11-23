Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"

  resources :vehicules, only: [:index, :show, :new, :create, :edit, :update, :destroy] do
    resources :bookings, only: [:index, :show, :create]
    # index & show à supprimer, uniquement pour les tests dans un premier temps
  end

  resource :bookings, only: [] do
    member do
      patch ":id/accept", to: "bookings#accept", as: :accept
      patch ":id/decline", to: "bookings#decline", as: :decline
    end
  end

  get '/dashboard', to: "pages#dashboard"

end
