Rails.application.routes.draw do
  devise_for :users
  
  resources :chatroom
  resources :messages
  root "welcome#root"
end
