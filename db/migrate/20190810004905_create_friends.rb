class CreateFriends < ActiveRecord::Migration[6.0]
  def change
    create_table :friends, id: false do |t|
      t.integer :friend_id, null: false
      t.string :friend_name
    end
    add_index :friends, :friend_id, unique: true
  end
end
