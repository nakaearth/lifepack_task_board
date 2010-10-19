class GroupController < ApplicationController
  respond_to :html,:xml
  def index
    if session[:login_user] == nil
      redirect_to :controller=>'sessions'
    end
    @groups = Group.where(["owner_id=?",@login_user]).latest
    #respond_to do |format|
    #  format.html # index.html.erb
    #  format.xml  { render :xml => @groups }
    #end
  end

  def new
    @group = Group.new
     respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @task }
    end
  end

  def create

  end

  def edit

  end

  def update

  end

  def destroy

  end

  def show

  end
end
