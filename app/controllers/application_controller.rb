class ApplicationController < ActionController::Base
  helper_method :current_user
  helper_method :logged_in?
  helper_method :omniauth_user
  helper_method :user_redirect
  protect_from_forgery with: :exception

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def omniauth_user
    @omniauth_info ||= session[:omniauth_info] if session[:omniauth_info]
  end

  def logged_in?
    session[:user_id] && session[:authenticated]
  end

  def user_redirect(user)
    if user.type
      redirect_to pro_dashboard_path
    else
      redirect_to dashboard_path
    end
  end

  def current_admin?
    current_user.admin?
  end

end
