json.extract! cart, :id, :total_balance, :created_at, :updated_at
json.url cart_url(cart, format: :json)
