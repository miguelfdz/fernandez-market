class CartsController < ApplicationController
  skip_before_action :verify_authenticity_token

  def show
    if params[:product]
      update
    else
      @cart = find_for_user
    end
  end

  def update
    product = find_product
    @cart = find_for_user
    @cart.products.append(product)
    @cart.total_balance += discount_price(product)
    @cart.save
  end

  private
    def find_product
      Product.find(params[:product])
    end

    def find_for_user
      user_id = params[:user]
      user = User.find(user_id)
      if user.cart == nil
        cart = Cart.create(user_id: user_id)
        cart.save
        return cart
      else
        Cart.where(user_id: user_id).first
      end
    end

    def discount_price(product)
      Product.price_with_discount(product)
    end
end
