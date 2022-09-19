<!-- 
### Review
The routes.rb file defines all the possible urls to which your application is prepared to respond. It's like the address book of your Rails app.
Each route will point to a method on in the controller file.
The controller method will ultimately do the work you require and send the appropriate view response.
params is a method returning a ActionController::Parameters which is a hash of parameters submitted in the request.

### Challenges
Routes, Views, Controllers

As a user, I can visit a custom landing page at localhost:3000.

class HomeController < ApplicationController
    def hello 
        render html: 'Hi there, were Echo2022' 
    end
end

With url localhost:3000/hello 
displays Hi there, were Echo2022

As a user, I can see the names of my team members as hyperlinks on the landing page.

DONE!

As a user, I can click on each team member's name and be taken to a page that displays a list of that team member's top three things. (Could be top three restaurants, activities, books, video games, hiking locations, beaches, doughnut shoppes, movies, etc.)
Params

DONE!

As a user, I can visit a page called cubed that takes a number as a param and displays that number cubed.

DONE!

As a user, I can visit a page called evenly that takes two numbers as params and displays whether or not the first number is evenly divisible by the second.

DONE!

As a user, I can visit a page called palindrome that takes a string as a param and displays whether it is a palindrome (the same word forward and backward).

DONE!

As a user, I can visit a page called madlib that takes params of a noun, verb, adjective, adverb, and displays a short silly story. 

DONE!




-->