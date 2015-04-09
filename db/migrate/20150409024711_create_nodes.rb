class CreateNodes < ActiveRecord::Migration
  def change
    create_table :nodes do |t|
      t.string :name, limit: 100
      t.integer :order_id
      t.integer :topics_number

      t.timestamps
    end
  end
end
