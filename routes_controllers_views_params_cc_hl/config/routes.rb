Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root 'main#fire_twerk'
  get '/twerk' => 'main#twerk'
  get '/fire_twerk' => 'main#fire_twerk'
  get '/cathrine' => 'main#cathrine'
  get '/hieu' => 'main#hieu'
  get '/cubed' => 'main#cubed'
  get '/cubed/:cubed' => 'main#cubed'
  get '/evenly/:num1,:num2' => 'main#evenly'
  get '/palindrome/:string' => 'main#palindrome'
  get '/madlib/:noun,:verb,:adjective,:adverb' => 'main#madlib'
end
