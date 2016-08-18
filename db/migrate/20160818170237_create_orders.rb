class CreateOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :orders do |t|
      t.string :restaurant
      t.text :meal_order

      t.timestamps
    end
  end
end
