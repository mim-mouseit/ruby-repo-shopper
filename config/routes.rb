Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # you can have the root of your site routed with "root"
  root 'products#index', as: 'home'

  # Example of regular route:
  get 'admin' => 'admin#index', as: 'admin'
  get 'products' => 'products#index'

  # Example resource route (maps HTML verbs to controller actions)
  resources :products
end
