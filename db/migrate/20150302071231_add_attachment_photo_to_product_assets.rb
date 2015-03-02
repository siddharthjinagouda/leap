class AddAttachmentPhotoToProductAssets < ActiveRecord::Migration
  def self.up
    change_table :product_assets do |t|
      t.attachment :photo
    end
  end

  def self.down
    drop_attached_file :product_assets, :photo
  end
end
