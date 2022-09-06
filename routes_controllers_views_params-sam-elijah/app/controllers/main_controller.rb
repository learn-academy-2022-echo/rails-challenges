class MainController < ApplicationController
    def homepage
    end
    def cubed
       @number = params[:number].to_i
       @number = @number**3
    end
    def evenly
        @number1 = params[:number1].to_i
        @number2 = params[:number2].to_i
        if @number1 % @number2 == 0
            @result_string = "#{@number1} is evenly divisible by #{@number2}."
        else @result_string = "#{@number1} is not evenly divisible by #{@number2}."
        end
    end
    def palindrome
        @string = params[:string]
        if @string.downcase.reverse == @string.downcase
            @result_string = "#{@string} is a palindrome."
        else @result_string = "#{@string} is not a palindrome."
        end
    end
    def madlib
        @noun = params[:noun]
        @verb = params[:verb]
        @adjective = params[:adjective]
        @adverb = params[:adverb]
        @result_string = "There once was a thing named #{@noun}. #{@noun} was #{@verb} one day when suddenly they were attacked by a #{@adjective} bear. They tried to run away, but the bear was #{@adverb} chasing them, so they hid somewhere."
    end
end
