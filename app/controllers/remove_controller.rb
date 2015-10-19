class RemoveController < ApplicationController

    def read
        @dbs = Article.all
    end
    
    def write
        @db = Article.new
        @db.article_name = params[:author_name]
        @db.article_content = params[:content]
        @db.article_password = params[:password]
        @db.my_image = params[:image_file]
        @db.save
        redirect_to  '/'
    
    end
    
    def delete
        db1 = Article.find(params[:id])
        db1.destroy
        redirect_to  '/'
    end
    
    def modify
        @db1 = Article.find(params[:id])
        #이거는 여기서만 영향을 준다! 
    end
    
    def update
        @db1 = Article.find(params[:id])
        @db1.article_name = params[:new_name]
        @db1.article_content = params[:new_content]
        @db1.save
        
        redirect_to "/"
    end
    
    def write_reply
        my_reply = Reply.new
        my_reply.article_id = params[:article_id]
        my_reply.content = params[:myreply]
        my_reply.save
        
        redirect_to "/"
    end
    
end