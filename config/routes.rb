Rails.application.routes.draw do
  get 'users/edit'
  get 'users/update'
  get 'users/mypage'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "home#index"
  
  
end
