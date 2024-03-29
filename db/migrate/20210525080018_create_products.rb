class CreateProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :products do |t|
      t.string :name
      t.integer :stock
      t.float :price
      t.integer :serial_number
      t.string :brand
      t.string :image

      t.timestamps
    end
  end
end
