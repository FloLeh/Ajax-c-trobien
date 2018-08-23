Rails.application.routes.draw do
  root to: 'email#index'
  get '/email/my_method', to: "email#my_method", as: "my_method_email"
  get '/email/destroy', to: "email#destroy", as: "destroy_email"
  resources :email
end
