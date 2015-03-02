json.array!(@products) do |product|
  json.extract! product, :id, :title, :description, :image_url, :price
  json.url product_url(product, format: :json)

  json.product_assets product.product_assets do |product_asset|
  	json.photo_url product_asset.photo.url(:medium)
  end
end