class OrdersController < ApplicationController
  def index
    
  end

  def show
    @templates = Template.all.order("created_at DESC")
  end
  
  def create
    @order = Order.new(order_params)

  end

  private
  def order_params
    params.require(:order).permit(:ordermessage, :template_id, :category_id).merge(user_name: current_user.id,template_id: Template.id)
  end
end