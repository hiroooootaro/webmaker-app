class TemplatesController < ApplicationController

  def show
    @order_check = Order.all.order("created_at DESC")
    @template = Template.find(params[:id])
  end

  def index
  end

  def new
    @template = Template.new
  end

  def create
    @template = Template.new(template_params)
    if @template.save
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def template_params
    params.require(:template).permit(:template_explain, :category_id, :template_image ).merge(user_id: current_user.id)
  end

end
