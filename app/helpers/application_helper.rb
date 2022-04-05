module ApplicationHelper
  def not_logged_in(&block)
    capture(&block) unless session[:user_id]
  end

  def logged_in(&block)
    capture(&block) if session[:user_id]
  end
end
