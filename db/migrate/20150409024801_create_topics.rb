class CreateTopics < ActiveRecord::Migration
  def change
    create_table :topics do |t|
      t.string :title, limit: 200
      t.text :content
      t.integer :user_id
      t.integer :node_id

      t.timestamps
    end
  end
end
