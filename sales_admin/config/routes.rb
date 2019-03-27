Rails.application.routes.draw do
  resources :reports, only: [:index, :new ,:show, :create]
  root to: "reports#new" 
end
