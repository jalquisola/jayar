Rails.application.routes.draw do
  root "pages#home"
  get :thanks, to: 'pages#thanks'
  resources :inquiries, only: [:create]
end
