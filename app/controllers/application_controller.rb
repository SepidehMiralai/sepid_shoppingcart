class ApplicationController < ActionController::Base
  before_action :authorize
  helper_method :current_user
  helper_method :current_product
  
# ...
def current_user     
  @current_user ||= User.find_by(id: session[:user_id]) 
end

def current_product    
  @current_product ||= Product.find_by(id: params[:product_id])  
end

protected
  def authorize
    unless current_user
      redirect_to login_url, notice: "Please log in" 
    end
  end

end
