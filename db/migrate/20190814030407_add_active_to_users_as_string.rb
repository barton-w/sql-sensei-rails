class AddActiveToUsersAsString < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :active, :string
  end
end
