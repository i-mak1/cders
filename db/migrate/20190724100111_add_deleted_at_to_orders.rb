class AddDeletedAtToOrders < ActiveRecord::Migration[5.2]
  def change
    add_column :orders, :deleted_at, :datetime
    add_index :orders, :deleted_at
  end
end
