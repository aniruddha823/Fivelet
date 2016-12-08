Rails.application.routes.draw do
  devise_for :users
	root 'home#index'
  get 'fivelet/new'
  get 'home/index'
  get 'users/index'
  get 'fivelet/show', to: 'fivelet#create'
  get 'users/:id/posts' => 'users#posts', :as => :user_posts
  resources :fivelets
  resources :users do
    member do
      get :follow
      get :unfollow
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
