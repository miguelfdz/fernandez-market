class CartsController < ApplicationController
  skip_before_action :verify_authenticity_token

  def index
    @carts = Cart.all
  end

  def show
    @cart = find_for_user
  end

  def edit
  end

  def update
    respond_to do |format|
      if @cart.update(cart_params)
        format.html { redirect_to @cart, notice: "Cart was successfully updated." }
        format.json { render :show, status: :ok, location: @cart }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @cart.errors, status: :unprocessable_entity }
      end
    end
  end

  private

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

    # Only allow a list of trusted parameters through.
    def cart_params
      params.require(:cart).permit(:user_id, :total_balance)
    end
end
