Rails.application.routes.draw do
  root to: 'discussions#index'

  resources :discussions

  get '/auth/:provider/callback' => 'session#new'
  get '/auth/sign-out' => 'session#sign_out', as: :sign_out
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
