class CreateFivelets < ActiveRecord::Migration[5.0]
  def change
    create_table :fivelets do |t|
      t.string :artist1
      t.string :artist2
      t.string :artist3
      t.string :artist4
      t.string :artist5
      t.timestamps
    end
  end
end
