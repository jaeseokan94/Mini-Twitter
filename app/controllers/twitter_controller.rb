class TwitterController < ApplicationController
    
    def input
    end
    
    def output
        temp = TwitterDb.new
        temp.content = params[:article]
        temp.save
        
        @output_text = TwitterDb.all
    end
    
end
