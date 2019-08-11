class CreateSpiritAnimals < ActiveRecord::Migration[6.0]
  def change
    create_table :spirit_animals, id: false do |t|
      t.integer :spirit_animal_id, null: false
      t.string :spirit_animal
      t.integer :spirit_animal_friend_id
    end
    add_index :spirit_animals, :spirit_animal_id, unique: true
  end
end
