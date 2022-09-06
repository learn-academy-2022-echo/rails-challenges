Rails.application.routes.draw do
  root 'main#home'
  get '/vanessa' => 'main#vanessa'
  get '/cody' => 'main#cody'
  get '/cubed/:number' => 'main#cubed'
  get '/divtwo/:number1/:number2' => 'main#divtwo'
end
