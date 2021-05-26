class PagesController < ApplicationController
  require_relative "../services/products/list_service"

  helper_method :products_with_discount

  def index
    @products_with_discount
  end

  private

  def products_with_discount
    Products::ListService.all_products_with_discount.compact
  end
end
