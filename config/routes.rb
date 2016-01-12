Rails.application.routes.draw do
  
  devise_for :users
  get '/about' => 'pages#about'
  
  resources :posts do
    resources :comments
  end
  
  root 'posts#index'
end
