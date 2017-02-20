Rails.application.routes.draw do
  resources :cvs
  root 'cvs#index'
end
