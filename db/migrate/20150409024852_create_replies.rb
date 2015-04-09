class CreateReplies < ActiveRecord::Migration
  def change
    create_table :replies do |t|
      t.text :content
      t.integer :user_id
      t.integer :topic_id
      t.boolean :deleted_tag

      t.timestamps
    end
  end
end
