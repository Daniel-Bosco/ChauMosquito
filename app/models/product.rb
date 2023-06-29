class Product < ApplicationRecord
  belongs_to :brand
  belongs_to :product_type
  has_one :stock
  has_one_attached :image
end
