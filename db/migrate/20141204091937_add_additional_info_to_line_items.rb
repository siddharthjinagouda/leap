class AddAdditionalInfoToLineItems < ActiveRecord::Migration
  def change
    add_column :line_items, :additional_info, :text
  end
end
