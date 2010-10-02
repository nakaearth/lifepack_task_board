class TasksController < ApplicationController
  respond_to :html,:xml
  # GET /tasks
  # GET /tasks.xml
  def index
    if session[:login_user] == nil
      redirect_to :controller=>'sessions'
    end
    @login_user = session[:login_user]
    @todo_tasks = Task.where(["user_id=?",@login_user]).todo.latest
    @doing_tasks = Task.where(["user_id=?",@login_user]).doing.latest
    @done_tasks = Task.where(["user_id=?",@login_user]).done.latest
  end


  def change_status_todo
    @task = Task.find(params[:id])
    @task.update_attribute(:status, '1')
    p params[:id]
   #@task.update_
    render :update do |page|
        page.visual_effect :highlight, "#{params[:id]}", :duration => 0.6
    end
  end
  def change_status_doing
    @task = Task.find(params[:id])
    @task.update_attribute(:status, '2')
    p params[:id]
   #@task.update_
    render :update do |page|
        task_id = params[:id]
        page[task_id].visual_effect :highlight, :duration => 0.6
        #page.replace("message_info","<font size='3' color='green'>タスクの状況に進捗がありました。お疲れ様です！</font>")
    end
  end
  def change_status_done
    @task = Task.find(params[:id])
    #@task.update_attributes(:status => status)
    @task.update_attribute(:status, '3')
    p params[:id]
   #@task.update_
    render :update do |page|
        page.visual_effect :highlight, "#{params[:id]}", :duration => 0.6
    end
  end

  # GET /tasks/1
  # GET /tasks/1.xml
  def show
    if session[:login_user] == nil
      redirect_to :controller=>'sessions'
    end
    @login_user = session[:login_user]
    @task = Task.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @task }
    end
  end

  # GET /tasks/new
  # GET /tasks/new.xml
  def new
    if session[:login_user] == nil
      redirect_to :controller=>'sessions'
    end
    @login_user = session[:login_user]
    @task = Task.new
    @task.status = 1
    @task.priority = 1
    set_login_user
    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @task }
    end
  end

  # GET /tasks/1/edit
  def edit
    if session[:login_user] == nil
      redirect_to :controller=>'sessions'
    end
    @login_user = session[:login_user]
    @task = Task.find(params[:id])
    set_login_user
  end

  # POST /tasks
  # POST /tasks.xml
  def create
    if session[:login_user] == nil
      redirect_to :controller=>'sessions'
    end
    @login_user = session[:login_user]
    @task = Task.new(params[:task])
    @task.user_id = @login_user
    respond_to do |format|
      if @task.save
        format.html { redirect_to(@task, :notice => 'Task was successfully created.') }
        format.xml  { render :xml => @task, :status => :created, :location => @task }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @task.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /tasks/1
  # PUT /tasks/1.xml
  def update
    if session[:login_user] == nil
      redirect_to :controller=>'sessions'
    end
    @login_user = session[:login_user]
    @task = Task.find(params[:id])
    respond_to do |format|
      if @task.update_attributes(params[:task])
        format.html { redirect_to(@task, :notice => 'Task was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @task.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /tasks/1
  # DELETE /tasks/1.xml
  def delete_task
    if session[:login_user] == nil
      redirect_to :controller=>'sessions'
    end
    @login_user = session[:login_user]
    @task = Task.find(params[:id])
    @task.destroy
    render :update do |page|
      task_id = params[:id]
      page[task_id].visual_effect :fade, :duration => 0.6
    end
  end

  def show_calendar
    if session[:login_user] == nil
      redirect_to :controller=>'sessions'
    end
    @login_user = session[:login_user]
  end

  private
  def set_login_user
    if session[:login_user] == nil
      redirect_to :controller=>'sessions'
    end
    @login_user = session[:login_user]
 end

end
