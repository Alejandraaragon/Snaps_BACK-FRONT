Rails.application.routes.draw do
  resources :snapdbs
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  
  # Defines the root path route ("/")
   root "main#index"
end
