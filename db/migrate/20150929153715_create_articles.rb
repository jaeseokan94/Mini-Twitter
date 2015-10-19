class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|

      t.string :article_name 
      t.text :article_content
      t.string :article_password
      
            t.string :my_image

      
      
      t.timestamps null: false
    end
  end
end
