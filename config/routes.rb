Rails.application.routes.draw do
  resources :categories

  root 'pages#home'
  get :home, :math, :about, :form, :admin, controller: :pages

  resources :posts

  resource :session, only: [:create, :destroy]

  # post :about, controller: :pages

  # get 'pages/home'

  # get 'pages/about'

  # root 'pages#home' #首頁
  # get "/", to: 'pages#home' #也可這麼寫
  # get 'home', to: 'pages#home'
  # get 'about/me', to: 'pages#about'
end