class Category < ActiveRecord::Base
  belongs_to :category
  has_one :category
  has_and_belongs_to_many :products

  def parent_category_name
    category_id == nil ? " " : Category.find(category_id).name
  end
end
