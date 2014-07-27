class CreatePages < ActiveRecord::Migration
  def change
    create_table :pages do |t|
      t.integer :creative_id
      t.integer :line_id

      t.timestamps
    end
  end
end
