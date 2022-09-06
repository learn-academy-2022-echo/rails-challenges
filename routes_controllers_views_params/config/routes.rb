Rails.application.routes.draw do
  get '/member' => 'team#member'
  get '/member/:lists' => 'team#lists'
  get '/member/:dlists' => 'team#dlists'
end
