class SimplegameController < ApplicationController
    
        
    
    def whats_yourname
    end
    
    def your_previous_life
        params[:myname]
        @my_previous_life=""
        previous_life_set = ["battery","apple watch","wallet","cell phone"]
        exist = PreviousLife.where(:name => params[:myname]).take
        if exist.nil?
            #새로운 값을 지정하고
            new_previous_life = PreviousLife.new
            new_previous_life.name = params[:myname]
            new_previous_life.something = previous_life_set.sample
            new_previous_life.save
            @my_previous_life = new_previous_life.something
            
        else
            @my_previous_life = exist.something
            # 그 값을 출력한다
        end

    end
end