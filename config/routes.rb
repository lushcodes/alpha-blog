Rails.application.routes.draw do
  root 'pages#home'
  get 'about', to: 'pages#about'
  get 'signup', to: 'users#new'

  resources :articles # You can expose selected routes using (only: [:show, :index, :new, :create, :edit, :update])
  resources :users, except: [:new]
end
