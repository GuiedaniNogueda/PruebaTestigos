class IndiceOrden < ActiveRecord::Migration
  def change
  	add_index :orders, :order_number
  end
end
