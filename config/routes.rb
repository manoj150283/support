Rails.application.routes.draw do
  resources :fbts
  resources :fbcs
  # get 'home/index'
  get 'home/fbcs'
  get 'home/fbts'
  root 'home#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
