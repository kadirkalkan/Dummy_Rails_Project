Rails.application.routes.draw do
  root 'adres#index'
  get 'new_adres', to: 'adres#new'
  post 'adres/create'

  get 'adres/:id/edit', to:"adres#edit"
  patch 'adres/update/:id', to:"adres#update"


  delete '/adres/:id/destroy', to: 'adres#destroy', as: 'destroy_adres'

  get 'pages/home'
  get 'about', to: 'pages#about'
  resources :articles
  get 'signup', to: 'users#new'
  resources :users, except: [:new]
  get 'home/hello/:id', to:"home#hello"
  get 'hoscakal', to: 'home#bye'
end