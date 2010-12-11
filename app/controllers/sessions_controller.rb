class SessionsController < ApplicationController
  before_filter :redirect_if_mobile
  
  def index
    @login_form = LoginForm.new params[:login_form]
  end
 
  def new
    if logged_in?
      flash[:notice] = "you already have logged in as "+user.name
      redirect_to :root
    end
    @login_form = LoginForm.new params[:login_form]
  end

  def create
   do_authenticate

    if logged_in?
      redirect_to :root
    else
      @login_form = LoginForm.new params[:login_form]
      flash[:notice] = "invalid name or password"
      redirect_to :new_session
    end
  end

  def destroy
    logout
    flash[:notice] = "logged out"
    redirect_to :new_session
  end

  def unauthenticated
    flash[:notice] = warden.message
    @login_form = LoginForm.new params[:login_form]
    redirect_to new_session_path
  end

  private
  def redirect_if_mobile
    if request.mobile? || request.smart_phone?
        pa = params.dup
        pa[:controller] = '/mo_session'
        redirect_to pa
#    elsif request.smart_phone?
#        pa = params.dup
#        pa[:controller] = "/smart_phone"
#        redirect_to pa
    end
  end
end
