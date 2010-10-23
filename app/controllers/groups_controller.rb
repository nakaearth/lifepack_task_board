class GroupsController < ApplicationController
  respond_to :html,:xml
  def index
    if session[:login_user] == nil
      redirect_to :controller=>'sessions'
    end
    @login_user =set_user
    @groups = Group.where(["user_id=?",@login_user]).latest
    #respond_to do |format|
    #  format.html # index.html.erb
    #  format.xml  { render :xml => @groups }
    #end
  end

  def new
    @login_user =set_user
    @group = Group.new
     respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @task }
    end
  end

  def create
    @login_user =set_user
    @group = Group.new(params[:group])
    @group.user_id = @login_user.id
    respond_to do |format|
      if @group.save
        format.html { redirect_to(@group, :notice => 'Task was successfully created.') }
        format.xml  { render :xml => @group, :status => :created, :location => @group }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @group.errors, :status => :unprocessable_entity }
      end
    end
  end

  def edit
    @login_user =set_user
  end

  def update
    @login_user =set_user
  end

  def destroy
    @login_user =set_user
  end

  def show
   @login_user =set_user
   @group=Group.find(params[:id])
  end

  def list_other_group

  end
end
