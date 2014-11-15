class CreateTempImages < ActiveRecord::Migration
  def change
    create_table :temp_images do |t|

      t.timestamps
    end
  end
end
