Rails.application.routes.draw do

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Defines the root path route ("/")
  
  root "appointments#index"
  # get "/appointments", to: "appointments#index" 
  # get "/appointments/:id", to: "appointments#show"
  resources :appointments

end
