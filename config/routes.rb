Rails.application.routes.draw do
  root "pages#profile"
  get :thanks, to: 'pages#thanks'
  resources :inquiries, only: [:create]

  get "amp", to: "pages#amp"
  get "terms-of-service", to: "pages#terms_of_service"
  get "privacy-policy", to: "pages#privacy_policy"
  get "about-smdc", to: "pages#about_smdc"
  get "how-to-reserve", to: "pages#how_to_reserve"
end
