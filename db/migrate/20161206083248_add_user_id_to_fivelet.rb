class AddUserIdToFivelet < ActiveRecord::Migration[5.0]
  def change
    add_column :fivelets, :user_id, :integer
  end
end
