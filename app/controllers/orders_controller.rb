class OrdersController < ApplicationController
  def order_confirm 
    @order = Template.find(params[:id])
  end

  def template_select
    @template = Template.all.order("created_at DESC")
    @orders = Order.new
  end

  def create
    @order = Order.new(order_params)
    if @order.save
      redirect_to root_path
    else
      render :order_confirm
    end
  end


  private
  def order_params
    params.permit(:order_message, :category_id, :template_id).merge(user_name: current_user.id)
  end
end