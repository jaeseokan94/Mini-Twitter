class CreatePreviousLives < ActiveRecord::Migration
  def change
    create_table :previous_lives do |t|
      
      t.string :name
      t.string :something
    
      t.timestamps null: false
    end
  end
end
