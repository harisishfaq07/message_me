Rails.application.routes.draw do
  mount ActionCable.server, at: '/cable'
  devise_for :users 
  resources :chatroom do
    collection do
      get :users
    end
  end
  resources :messages
  root "welcome#root"
end
