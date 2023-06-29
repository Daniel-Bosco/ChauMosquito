json.extract! product, :id, :brand_id, :product_type_id, :name, :price, :image, :description, :created_at, :updated_at
json.url product_url(product, format: :json)
json.image url_for(product.image)
