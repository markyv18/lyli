class AddProToOrders < ActiveRecord::Migration[5.1]
  def change
    add_column :orders, :go_pro, :string
  end
end
