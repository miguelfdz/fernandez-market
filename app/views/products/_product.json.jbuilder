json.extract! product, :id, :name, :stock, :price, :serial_number, :brand, :category, :image, :created_at, :updated_at
json.url product_url(product, format: :json)
