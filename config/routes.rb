Rails.application.routes.draw do
  devise_for :users
  root 'diaries#index'
  resources :diaries
end
