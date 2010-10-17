class ApplicationController < ActionController::Base
  protect_from_forgery
#  def login_required
#    # 認証されているかどうか。このステータスを見ると分かりやすい。 - Whether authenticated or not. This status makes clear.
#    return true if authenticated?
#    redirect_to :controller => "sessions", :action => "new"
#    false
#  end
  def require_authentication
    do_authenticate unless logged_in?
  end
  def logged_in?
    authenticated?
  end
  def do_authenticate
    authenticate!
  end

  def set_user
    if session[:login_user] == nil
      redirect_to :controller=>'sessions'
    end
    @login_user = session[:login_user]
  end

end
