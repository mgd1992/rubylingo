Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: 'users/registrations' }

  root to: "pages#home"
  get '/select_level', to: "users#select_level", as: "select_level"
  get '/challenges_per_day', to: "users#challenges_per_day", as: "challenges_per_day"
  resources :challenges, only: [:index, :show]
  resources :questions, only: :show do
    resources :messages, only: :create
  end

  resources :user_answers, only: [:create]

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check
  get "users/:id/profile", to: "users#show", as: :profile
  post "users/:id/update_gems", to: "users#update_gems", as: :update_gems


  # Defines the root path route ("/")
  # root "posts#index"
end
