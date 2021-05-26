module Products
  module ListService

    def self.all_available_products
      Product.all.map { |product|
        if has_stock?(product)
          product
        end
      }
    end

    def self.all_products_with_discount
      Product.all.map { |product|
        if has_discount?(product) and has_stock?(product)
          product
        end
      }
    end

    private
    module_function

    def has_discount?(product)
      product.discount.present?
    end

    def has_stock?(product)
      product.stock != 0
    end
  end
end