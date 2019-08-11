class CreateFriendsMusic < ActiveRecord::Migration[6.0]
  def change
    create_table :friends_music, id: false do |t|
      t.integer :music_id, null: false
      t.integer :music_friend_id, null: false
      t.integer :music_band_id, null: false
    end
    add_index :friends_music, :music_id, unique: true
  end
end
