Challenges
Routes, Views, Controllers

As a user, I can visit a custom landing page at localhost:3000.

Create a new database: 
    $ rails new routes_controllers_views_params -d postgresql -T -G

cd into rails app 
Create a database: 
    $ rails db:create
        Created database 'routes_controllers_views_params_development'
        Created database 'routes_controllers_views_params_test'

Start server: 
    $ rails s 

As a user, I can see the names of my team members as hyperlinks on the landing page.

Create Controller: 
    $  rails generate controller Team
        create  app/controllers/team_controller.rb
        invoke  erb
        create    app/views/team
        invoke  helper
        create    app/helpers/team_helper.rb

 In team_controller.rb 

        class TeamController < ApplicationController

            def member 
                render html: 'Do we see this?'
            end
        end

routes.rb 

            Rails.application.routes.draw do
        get '/member' => 'team#member'
        end

Create a a view file: html.erb in view/team

member.html.erb 

    <ul>
    <li> <%= link_to 'Joyce', '/member' %></li>
    <li><%= link_to 'Dawit', '/member' %></li>
    




As a user, I can click on each team member's name and be taken to a page that displays a list of that team member's top three things. (Could be top three restaurants, activities, books, video games, hiking locations, beaches, doughnut shoppes, movies, etc.)
Params

app/controllers/team_controller.rb

    class TeamController < ApplicationController

        def member 
            render 'team/member'
        end
        def joyce
            render 'team/joyce'
        end
        def dawit
            render 'team/dawit'
        end
        def joey
            render 'team/joey'
        end
    end

config/routes.rb

    Rails.application.routes.draw do
    root 'main#member'
    get '/member' => 'team#member'
    get '/member/joyce' => 'team#joyce'
    get '/member/dawit' => 'team#dawit'
    get '/member/joey' => 'team#joey'
    end

create html.erb files for each member with their lists. ex) 

app/views/team/joyce.html.erb

    <ul>Joyce's Top 3 Food</ul>
    <li> Thai Food </li>
    <li>McDonalds</li>
    <li>In N Out</li>


app/views/team

    <ul>
    <li> <%= link_to 'Joyce', '/member/joyce' %></li>
    <li><%= link_to 'Dawit', '/member/dawit' %></li>
    <li><%= link_to 'Joey', '/member/joey'%></li>


Params: 
As a user, I can visit a page called cubed that takes a number as a param and displays that number cubed.

app/controllers/team_controller.rb
    class TeamController < ApplicationController

        def member 
            render 'team/member'
        end
        def joyce
            render 'team/joyce'
        end
        def dawit
            render 'team/dawit'
        end
        def joey
            render 'team/joey'
        end 
        def cube
            @number = params[:number].to_i ** 3
        end
    end

config/routes.rb 

    Rails.application.routes.draw do
    root 'team#member'
    get '/member' => 'team#member'
    get '/member/joyce' => 'team#joyce'
    get '/member/dawit' => 'team#dawit'
    get '/member/joey' => 'team#joey'
    get '/cube/:number' => 'team#cube'
    end

app/views/team/cube.html.erb

    <h1>number cubed is <%= @number %></h1>

URL: 
    http://localhost:3000/cube/120

*note: you can change the number after cube/# to have the view(webapplication) perform the logic: 

Webpage view: 
    number cubed is 1728000


As a user, I can visit a page called evenly that takes two numbers as params and displays whether or not the first number is evenly divisible by the second.


As a user, I can visit a page called palindrome that takes a string as a param and displays whether it is a palindrome (the same word forward and backward).


As a user, I can visit a page called madlib that takes params of a noun, verb, adjective, adverb, and displays a short silly story.


