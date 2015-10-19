class HelloController < ApplicationController
    def glass
        @hr = "Human resource"
        @f = "finance"
        @c ="capital market"
        @no = (1..45).to_a.sample(8).sort
 
    end
end
