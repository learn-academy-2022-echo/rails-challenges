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
    def cubed 
        @result = params[:number].to_i ** 3 
    end
    def divtwo
        if params[:number1].to_i % params[:number2].to_i == 0
            @result =  "#{params[:number1]} is evenly divisible by #{params[:number2]}"
        else 
            @result =  "#{params[:number1]} is not evenly divisible by #{params[:number2]}"
        end
    end
end
