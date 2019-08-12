class CreateSolutions < ActiveRecord::Migration[6.0]
  def change
    create_table :solutions do |t|
      t.string :solution
      t.string :training
      t.integer :user_id

      t.timestamps
    end
  end
end
