class CreateIdentities < ActiveRecord::Migration
  def change
    create_table :identities do |t|
      t.string :name, limit: 100
      t.string :email, limit: 100
      t.string :password_digest, limit: 200

      t.timestamps
    end
  end
end
