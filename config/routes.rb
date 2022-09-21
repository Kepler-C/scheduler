Rails.application.routes.draw do
  # Defines the root path route ("/")

  # get "/appointments", to: "appointments#index" 
  # get "/appointments/:id", to: "appointments#show"
  
  root "appointments#index"

  resources :appointments do
    resources :comments, :prescriptions
  end

end
