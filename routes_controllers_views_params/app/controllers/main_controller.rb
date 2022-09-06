class MainController < ApplicationController
    def home
       
    end
    def vanessa 
        @snack = 'taco'
        @snack2 = 'oreos'
        @snack3 = 'granola bars'
    end
    def cody
        @food = 'pizza'
        @food2 = 'cheeseburgers'
        @food3 = 'steak'
    end
end
