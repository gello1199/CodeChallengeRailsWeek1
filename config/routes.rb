Rails.application.routes.draw do
  
  resources :supplies
  resources :categories do
    resources :parties, only: [:index, :show, :create]
  end
  #get '/parties', to: 'parties#index'
  resources :parties 
  # For details on the DSL available within this file, see https://guides.rubyonrg/routing.rails.ohtml
end
