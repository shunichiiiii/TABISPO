class ApplicationController < ActionController::Base
  def after_sign_in_path_for(resource)
    posts_path
  end

  def set_current_user
    @current_user = User.find_by(id: session[:user_id])
  end
  
  private
      def sign_in_required
          redirect_to new_user_session_url unless user_signed_in?
      end
end
