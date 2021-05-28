class Product < ApplicationRecord
  has_one_attached :image
  belongs_to :cart

  def self.price_with_discount(product)
    (product.price - ((product.discount/100) * product.price)).round(2)
  end
end
