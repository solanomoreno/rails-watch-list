Rails.application.routes.draw do
  resources :articles
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'lists#index'
  resources :lists, except: [:edit, :update] do
    resources :bookmarks, only: [:new, :create]
    resources :reviews, only: :create
  end
  resources :bookmarks, only: :destroy
  resources :reviews, only: :destroy

  # root to: 'articles#index'
  # resources :articles, except: :index

end
