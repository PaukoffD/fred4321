Rails.application.routes.draw do
  #root to: 'home#show'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users, only: [:show]
  mount Thredded::Engine => '/'
  #root 'thredded/messageboards#index'
end
