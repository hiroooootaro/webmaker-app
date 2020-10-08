class OrdersController < ApplicationController
  def index
  end

  def template
  end

  def create
    @order = Order.new(order_params)

  end

  private
  def order_params
    params.require(:order).permit(:ordermessage, :template_id, :category_id, :user_name)
  end
end