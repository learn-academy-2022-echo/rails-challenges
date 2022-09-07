Rails.application.routes.draw do
  root 'team#member'
  get '/member' => 'team#member'
  get '/member/joyce' => 'team#joyce'
  get '/member/dawit' => 'team#dawit'
  get '/member/joey' => 'team#joey'
  get '/cube/:number' => 'team#cube'
  get '/divisible/:number1,:number2' => 'team#divisible'
  get 'palindrome/:string' => 'team#palindrome'
end
