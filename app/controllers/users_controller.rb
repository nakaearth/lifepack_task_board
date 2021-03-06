class UsersController < ApplicationController
  # GET /users
  # GET /users.xml
#  def index
#    @users = User.all

 #   respond_to do |format|
 #     format.html # index.html.erb
 #     format.xml  { render :xml => @users }
 #   end
 # end

  # GET /users/1
  # GET /users/1.xml
  def show
    @login_user = set_user
    if @login_user == nil
      @user = User.find(params[:id])
    else
      @user = User.find(@login_user.id)
    end
    @belong_groups = Group.your_group(@user.id)
#    respond_to do |format|
#      format.html # show.html.erb
#      format.xml  { render :xml => @user }
#    end
  end

  # GET /users/new
  # GET /users/new.xml
  def new
    @user = User.new
    @belong_groups = Group.your_group(@user.id)
    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @user }
    end
  end

  # GET /users/1/edit
  def edit
    @user = User.find(params[:id])
    @belong_groups = Group.your_group(params[:id])
  end

  # POST /users
  # POST /users.xml
  def create
    @user = User.new(params[:user])
    respond_to do |format|
      if @user.save
        format.html { redirect_to(@user, :notice => 'User was successfully created.') }
        format.xml  { render :xml => @user, :status => :created, :location => @user }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @user.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /users/1
  # PUT /users/1.xml
  def update
    @user = User.find(params[:id])
    #@user.avatar = params[:file]
    @belong_groups = Group.your_group(params[:id])
    if @user.save!
    #if @user.update_attributes(params[:user])
      @uploader = AvatarUploader.new
      @uploader.store!(@user.avatar.current_path)
      p 'UPLOAD FILE'
      p @user.avatar
      p @user.avatar.current_path
      p @user.avatar.url
      p @user.avatar.filename
      flash[:notice] = "Successfully updated user."
       redirect_to @user
    else
      render :action => "edit"
    end
  end

  # DELETE /users/1
  # DELETE /users/1.xml
  def destroy
    @user = User.find(params[:id])
    @user.destroy

    respond_to do |format|
      format.html { redirect_to(users_url) }
      format.xml  { head :ok }
    end
  end

end
