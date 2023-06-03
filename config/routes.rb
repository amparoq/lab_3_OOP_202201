Rails.application.routes.draw do
  root "pages#home"

  resources :users, only: [:index, :show, :create, :destroy, :update, :new, :edit]
  resources :tickets, only: [:index, :show, :create, :destroy, :update, :new, :edit] do
    resources :comments, only: [:index, :show, :create, :destroy, :update, :new, :edit]
    resources :attachments, only: [:index, :show, :create, :destroy, :update, :new, :edit]
  end  
  resources :tags, only: [:index, :show, :create, :destroy, :update, :new, :edit]
  resources :responses, only: [:index, :show, :create, :destroy, :update, :new, :edit]
  resources :executive_metrics, only: [:index, :show, :create, :destroy, :update, :new, :edit]
  # Defines the root path route ("/")
  # root "articles#index"
end
