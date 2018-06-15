Rails.application.routes.draw do
  resources :posts
  get 'home/index'
  resources :articles do 
    resources :comments
  end
  root :to => "home#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
