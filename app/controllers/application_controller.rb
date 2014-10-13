class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def logged_in?
    logger.info (!!current_user)
    !!current_user
  end

  helper_method :current_user, :logged_in?

  def authorize
    user_as_string = current_user.nil? ? "nope" : current_user.as_json
    logger.info "LOL " + user_as_string.to_s
    redirect_to login_url, alert: "Not authorized" if current_user.nil?
  end
end
