Rails.application.routes.draw do

  devise_for :users
  resources :articles
  get   'articless/new'  =>  'articles#new'
end
