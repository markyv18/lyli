class Admin::BaseController < ApplicationController
  before_action :require_admin

  def require_admin
    # add flash message to be displayed upon landing back on root_path
    # "Trying access the wilderness with a motorized vehicle"
    redirect_to root_path unless current_admin?
  end

  def show
    if params[:status]
      @orders = Order.where(status: params[:status]).order(created_at: :desc)
    else
      @orders = Order.order(created_at: :desc)
    end
    @orders_count = Order.all.count
    @statuses = Order.statuses
  end

end
