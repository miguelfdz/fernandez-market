class AddTotalSalesToProducts < ActiveRecord::Migration[6.1]
  def change
    add_column :products, :total_sales, :integer
  end
end
