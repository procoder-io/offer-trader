Rails.application.routes.draw do
  root 'offers#index'

  resources :payments
  resources :offers do
    patch :buy
  end

  devise_for :users

  # customize path names
  devise_scope :user do
    get "sign_in", to: "devise/sessions#new"
    get "sign_up", to: "devise/registrations#new"
    delete "sign_out", to: "devise/sessions#destroy"
  end
end
