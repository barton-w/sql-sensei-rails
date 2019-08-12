class MakeUserIdRequired < ActiveRecord::Migration[6.0]
  def change
    change_column_null :solutions, :user_id, false
  end
end
