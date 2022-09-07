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
    def divisible
       if params[:number1].to_i % params[:number2].to_i == 0
            @result =  "#{params[:number1]} is evenly divisible by #{params[:number2]}"
        else 
            @result =  "#{params[:number1]} is not evenly divisible by #{params[:number2]}"
        end
    end
    def palindrome
        if params[:string] == params[:string].reverse
            @answer = "#{params[:string]} is a palindrome"
        else
            @answer = "#{params[:string]} is NOT a palindrome"
        end
    end  
    end
