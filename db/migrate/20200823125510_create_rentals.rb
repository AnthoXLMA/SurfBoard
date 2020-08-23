class CreateRentals < ActiveRecord::Migration[6.0]
  def change
    create_table :rentals do |t|
      t.datetime :from
      t.datetime :to
      t.integer :total_price
      t.string :status

      t.timestamps
    end
  end
end
