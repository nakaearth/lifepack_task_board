class MoSessionController < MoApplicationController
  def index
    @login_form = LoginForm.new params[:login_form]
  end

  def create
    #
    @user = User.where("name=? and password=?",params[:user][:name],params[:user][:password])
    if @user == nil
      session[:user_id] = @user.id
      redirect_to :root
    else
      flash[:error]
    end
  end

end
