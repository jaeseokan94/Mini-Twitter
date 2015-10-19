class CreateTwitterDbs < ActiveRecord::Migration
  def change
    create_table :twitter_dbs do |t|

     t.string :content 

      t.timestamps null: false
    end
  end
end
