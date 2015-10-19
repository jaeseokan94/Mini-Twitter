class CreateReplies < ActiveRecord::Migration
  def change
    create_table :replies do |t|
      
      t.integer :article_id
      t.string :content
      
      
      t.timestamps null: false
    end
  end
end