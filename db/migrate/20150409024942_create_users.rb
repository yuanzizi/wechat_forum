class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :nickname, limit: 200
      t.string :avatar, limit: 200
      t.integer :sex
      t.string :email, limit: 200

      t.timestamps
    end
  end
end
