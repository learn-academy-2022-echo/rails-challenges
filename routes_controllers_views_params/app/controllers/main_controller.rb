class MainController < ApplicationController
   def names
   end

   def brook
   end

   def holden
   end

   def cubed
    if params[:num].to_i
        @result = params[:num].to_i ** 3
    else
        @result = 0
    end
   end
   
   def evenly
    
    result = params[:num1].to_i % params[:num2].to_i 
    if params[:num1].to_i && params[:num2].to_i
        
        if result.even?
            @answer = 'Evenly Divisible'
        else
            @answer = 'Not Evenly Divisible'
        end
    
    else
        @answer = "Not valid input"
    end         

    end

    def palindrome
    if params[:string].to_string
        if params[:string].to_string.reverse == params[:string].to_string
            @palindrome_answer = 'This is a palindrome'
        else
            @palindrome_answer = 'This is not a palindrome'
        end
    else
        @palindrome_answer = 'Not a valid answer'
    end
    end
end
