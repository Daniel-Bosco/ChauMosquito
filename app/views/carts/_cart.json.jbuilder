json.extract! cart, :id, :user_id, :description, :created_at, :updated_at
json.url cart_url(cart, format: :json)
