Rails.application.routes.draw do
  resources :rooms do 
    resources :messages
  end
  get 'pages/home'
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
devise_scope :user do 
  get 'users', to: 'devise/sessions#new'
  get '/users/sign_out' => 'devise/sessions#destroy' 
end
 get 'user/:id', to: 'users#show', as: 'user'
  # Defines the root path route ("/")
  root "pages#home"
end
