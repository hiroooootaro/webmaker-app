class OrdersController < ApplicationController
  def index
  end

  def template
    #binding.pry
    @template = Template.new
  end

  def show
    @template = Template.new
  end
  def create
    @order = Order.new(order_params)

  end

  private
  def order_params
    params.require(:order).permit(:ordermessage, :template_id, :category_id, :user_name)
  end
end