Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  post 'login', to: 'sessions#create'
  get 'login', to: 'sessions#new'
  delete 'logout', to: 'sessions#destroy'
  resources :users, except: [:new]
  root 'welcom#index'
end
