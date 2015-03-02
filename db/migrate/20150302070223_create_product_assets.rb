class CreateProductAssets < ActiveRecord::Migration
  def change
    create_table :product_assets do |t|
      t.belongs_to :product, index: true

      t.timestamps
    end
  end
end
