Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "main#display"
  get '/display' => 'main#display'
  get '/daniels_foods' => 'main#daniels_foods'
  get '/tuans_foods' => 'main#tuans_foods'
end
