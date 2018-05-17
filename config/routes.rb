Rails.application.routes.draw do
  resources :messages
  resources :posts
  devise_for :users
  resources :homes
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/', to: 'homes#index', as: 'root'

end
