class CreateBoards < ActiveRecord::Migration[6.0]
  def change
    create_table :boards do |t|
      t.string :name
      t.integer :height
      t.string :category
      t.integer :price

      t.timestamps
    end
  end
end
