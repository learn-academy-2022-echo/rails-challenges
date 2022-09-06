Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root 'main#names'
  get '/brook' => 'main#brook'
  get '/holden' => 'main#holden'
  get '/:num' => 'main#cubed'
  get '/:num1/:num2' => 'main#evenly'
  get '/:string' => 'main#palindrome'

end
