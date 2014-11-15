class AddAssetToImage < ActiveRecord::Migration
  def change
  	add_attachment :images, :asset
  end
end
