class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!

  helper_method :current_user
  helper_method :user_logged_in?

  def current_user
    @current_user ||= User.find_by(id: session[:user_id])
  end

  def user_logged_in?
    current_user.present?
  end

  def authenticate_user!
    unless user_logged_in?
      flash[:notice] = "You need to login."
      redirect_to root_path
    end
  end

end
