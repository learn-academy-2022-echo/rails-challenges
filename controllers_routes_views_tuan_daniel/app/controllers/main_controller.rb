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

    def cubed
        @number = params['number'].to_i ** 3
        render 'cubed_numbers'
    end
end
   