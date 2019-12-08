class ApplicationController < ActionController::Base
  before_action :authorize
  helper_method :current_user
  helper_method :logged_in?
# ...
def current_user    
  User.find_by(id: session[:user_id])  
end
protected
  def authorize
    unless current_user
      redirect_to login_url, notice: "Please log in" 
    end
  end
  
  def logged_in?
       
    !current_user.nil?  
  end
end
