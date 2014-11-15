class AddIdColumnToLines < ActiveRecord::Migration
  def change
  	add_column :lines, :order_id, :integer
  end
end
