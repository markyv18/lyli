class Pro::BaseController < ApplicationController
  before_action :require_pro

  def require_pro
    # add flash message to be displayed upon landing back on root_path
    # "Trying access the wilderness with a motorized vehicle"
    redirect_to root_path unless current_admin?
  end
end
