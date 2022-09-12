class MainController < ApplicationController
    def twerk
        render html: 'Twerk. This is how you twerk.' 
        # render 'main/twerk.html.erb'
    end
    def fire_twerk

    end
    def cathrine

    end
    def hieu

    end
    def cubed
       @cubed = params[:cubed].to_i ** 3       
    end
    def evenly 
        @num1 = params[:num1].to_i
        @num2 = params[:num2].to_i
        if @num1 % @num2 == 0
        @results = 'evenly divisible'
        else
        @results = 'not evenly divisible'
        end
    end
    def palindrome
        @string = params[:string].to_s
        if @string.downcase == @string.downcase.reverse
            @palindrome_result = 'palindrome'
        else
            @palindrome_result = 'not a palindrome'
        end
    end
    def madlib
    @noun = params[:noun].to_s
    @verb = params[:verb].to_s
    @adjective = params[:adjective].to_s
    @adverb = params[:adverb].to_s
    end
end
