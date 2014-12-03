class Category < ActiveRecord::Base
  belongs_to :category
  has_one :category

  def parent_category_name
    category_id == nil ? " " : Category.find(category_id).name
  end
end
