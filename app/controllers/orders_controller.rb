class OrdersController < ApplicationController
  def index
    @order = Order.new
  end

  def show
    @order = Order.new
    @templates = Template.all.order("created_at DESC")
  end

  def new
    @order = Order.new
  end

  def create
    @order = Order.new(order_params)
  end


  private
  def order_params
    params.require(:order).permit(:ordermessage, :template_id, :category_id).merge(user_name: current_user.id,template_id: Template.id)
  end
end