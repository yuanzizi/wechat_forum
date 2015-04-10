class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :check_user

  helper_method :current_user


  private
  def current_user
    # TODO get user from session 
    @_current_user ||= User.find_by_id(session[:user_id]) if session[:user_id]
    
    
  end


  def check_user
    redirect_to sessions_new_path unless current_user
  end

end
