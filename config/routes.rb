Rails.application.routes.draw do
  root 'pages#home'

  devise_for :users

  # customize path names
  devise_scope :user do
    get "sign_in", to: "devise/sessions#new"
    get "sign_up", to: "devise/registrations#new"
    delete "sign_out", to: "devise/sessions#destroy"
  end
end
