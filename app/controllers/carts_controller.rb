class CartsController < ApplicationController

  def clean
    current_cart.cart_items.destroy_all
    flash[:alert] = "购物车已经清空"
    redirect_to carts_path
  end
end
