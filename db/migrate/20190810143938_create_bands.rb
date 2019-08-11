class CreateBands < ActiveRecord::Migration[6.0]
  def change
    create_table :bands, id: false do |t|
      t.integer :band_id, null: false
      t.string :band_name
      t.integer :records_sold
    end
    add_index :bands, :band_id, unique: true
  end
end
