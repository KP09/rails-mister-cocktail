Rails.application.routes.draw do
  root 'cocktails#index'
  resources :cocktails do
    resources :doses, only: [:new, :create, :destroy]
  end

  resources :ingredients, only: [:index, :new, :create, :edit, :update, :destroy]

  mount Attachinary::Engine => "/attachinary"
end
