class AddAssetToTempimage < ActiveRecord::Migration
  def change
  	add_attachment :temp_images, :asset
  end
end
