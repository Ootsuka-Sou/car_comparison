Rails.application.routes.draw do
  resources :cars
  devise_for :users, controllers: { registrations: 'registrations' }
  get "users/show" => "users#show"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "home#index"
 
  
  
end
