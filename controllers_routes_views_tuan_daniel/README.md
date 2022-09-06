# Challenges
# Routes, Views, Controllers

<!-- As a user, I can visit a custom landing page at localhost:3000. -->✅
<!-- As a user, I can see the names of my team members as hyperlinks on the landing page. -->✅
App < Views < Main < display.html.erb
<h2>Students:</h2>
<h3><%= link_to 'Tuan Le', '/' %>
</br>
<%= link_to 'Daniel Clement', '/' %>
</h3>
<!-- As a user, I can click on each team member's name and be taken to a page that displays a list of that team member's top three things. (Could be top three restaurants, activities, books, video games, hiking locations, beaches, doughnut shoppes, movies, etc.) -->

<!-- CONTROLLER -->
class MainController < ApplicationController
    def display
        render 'display'
    end

    def daniels_foods
        render html: 'Ramen, Pizza, Tacos'
    end

    def tuans_foods
        render html: 'Steak, Burgers, Fries'
    end
end
<!-- ROUTE -->
Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "main#display"
  get '/display' => 'main#display'
  get '/daniels_foods' => 'main#daniels_foods'
  get '/tuans_foods' => 'main#tuans_foods'
end

<!-- VIEW -->
<h2>Students:</h2>
<h3><%= link_to 'Tuan Le', '/tuans_foods' %>
</br>
<%= link_to 'Daniel Clement', '/daniels_foods' %>
</h3>

Params

As a user, I can visit a page called cubed that takes a number as a param and displays that number cubed.
As a user, I can visit a page called evenly that takes two numbers as params and displays whether or not the first number is evenly divisible by the second.
As a user, I can visit a page called palindrome that takes a string as a param and displays whether it is a palindrome (the same word forward and backward).
As a user, I can visit a page called madlib that takes params of a noun, verb, adjective, adverb, and displays a short silly story.