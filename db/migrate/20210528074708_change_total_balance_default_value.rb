class ChangeTotalBalanceDefaultValue < ActiveRecord::Migration[6.1]
  def change
    change_column :carts, :total_balance, :float, :default => 0.0
  end
end
