Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Defines the root path route ("/")

  # get "/appointments", to: "appointments#index" 
  # get "/appointments/:id", to: "appointments#show"
  
  root "appointments#index"

  resources :appointments do
    resources :comments
  end

end
