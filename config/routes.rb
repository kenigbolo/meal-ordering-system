Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :orders do
  end

  #Route to root (Default homepage)
  # root "orders#index"
  get '/', to: 'orders#index', as: 'root'
  get 'auth/:provider/callback', to: 'sessions#create'
  get 'signout', to: 'sessions#destroy', as: 'signout'
end
