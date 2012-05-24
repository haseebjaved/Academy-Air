class ApplicationController < ActionController::Base
  
  
  before_filter :find_logged_in_user
  
  def find_logged_in_user
  @user = User.find_by_id(session[:uid])
  end
  
end
