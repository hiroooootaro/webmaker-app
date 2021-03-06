class OrdersController < ApplicationController

  def show
    @order_check = Order.find(params[:template_id])
  end
  def order_confirm 
    @order = Template.find(params[:id])
  end

  def template_select
    @templates = Template.all.order("created_at DESC")
    @order = Order.new
  end

  def create
    @order = Order.new(order_params)
    if @order.save
      redirect_to root_path
    else
      @order = Template.find(params[:template_id])
      render :order_confirm
    end
  end


  private
  def order_params
    params.permit(:order_message, :category_id, :template_id).merge(user_name: current_user.id)
  end
end