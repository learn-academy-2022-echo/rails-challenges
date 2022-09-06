Rails.application.routes.draw do
  root 'main#home'
  get '/vanessa' => 'main#vanessa'
  get '/cody' => 'main#cody'
end
