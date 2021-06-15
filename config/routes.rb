Rails.application.routes.draw do
  get 'categories/new'
  devise_for :users
  root 'homes#top'
  resources :lists do
    resources :categories, only: [:new, :create, :destroy]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
