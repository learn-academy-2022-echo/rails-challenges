Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

root 'main#homepage'
get '/sam' => 'main#sam'
get '/elijah' => 'main#elijah'
get '/cubed/:number' => 'main#cubed'
get '/evenly/:number1/:number2' => 'main#evenly'
get '/palindrome/:string' => 'main#palindrome'
get '/madlib/:noun/:verb/:adjective/:adverb' => 'main#madlib'
  # Defines the root path route ("/")
  # root "articles#index"
end
