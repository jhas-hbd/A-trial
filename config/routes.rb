Rails.application.routes.draw do
  devise_for :users
  root to: 'homes#top'
  resources :posts, only: [:new, :create, :destroy, :index]
  resources :users, only: [:show]
  get 'about' => "homes#about"
  get 'tagsearches/search' => 'tagsearches#search'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
