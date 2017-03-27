Rails.application.routes.draw do
  mount Ckeditor::Engine => '/ckeditor'
  #root to: 'home#show'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users, only: [:show]

  controller "thredded/workgroup/navs" do
    get "unread", action: :unread, as: :unread_nav
    get "following", action: :following, as: :following_nav
    get "all_topics", action: :all_topics, as: :all_topics_nav
    get "awaiting", action: :awaiting, as: :awaiting_nav
  end
  
  mount Thredded::Workgroup::Engine => "/"  #root 'thredded/messageboards#index'
end
