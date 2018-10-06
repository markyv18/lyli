class WelcomeController < ApplicationController

  def index # this action bypasses the first time visitor welcome sequence
    if current_user
      redirect_to home_path
    end
  end

  def show
  end

end
