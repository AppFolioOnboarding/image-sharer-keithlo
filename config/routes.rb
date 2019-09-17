Rails.application.routes.draw do
  get 'home/index'
  resources :image_urls
  root 'home#index'
end
