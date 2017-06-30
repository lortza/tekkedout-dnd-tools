Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "combat_trackers#index"

  resources :combatants, only: %i[create update] do
    member do
      patch :delete
    end
  end

  resources :combat_trackers, only: %i[index new create edit update destroy] do
    collection do
      get :deleted
    end

    member do
      post :add_combatant
    end
  end

  resources :creatures, only: [:index]

  resources :klasses, only: [:index]

  resources :races, only: [:index]

  resources :spells, only: %i[index search]

  get "/.well-known/acme-challenge/:id" => "letsencrypt#authenticate_key"
end
