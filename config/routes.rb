Rails.application.routes.draw do

  devise_for :users
  resources :articles
  get   'articles/new'  =>  'articles#new'
end
