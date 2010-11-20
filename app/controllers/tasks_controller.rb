class TasksController < ApplicationController
  #before_filter :redirect_if_mobile
  respond_to :html,:xml
  # GET /tasks
  # GET /tasks.xml
  def index
    @login_user =set_user
    group_id = params[:group_id]
    @todo_tasks = Task.where(["user_id=?",@login_user]).todo.latest
    @doing_tasks = Task.where(["user_id=?",@login_user]).doing.latest
    @done_tasks = Task.where(["user_id=?",@login_user]).done.latest
    if group_id != nil
       @todo_tasks.where(["group_id",group_id])
       @doing_tasks.where(["group_id",group_id])
       @done_tasks.where(["group_id",group_id])
    end
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
    @login_user =set_user
    @task = Task.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @task }
    end
  end

  # GET /tasks/new
  # GET /tasks/new.xml
  def new
    @login_user =set_user
    @task = Task.new
    @task.status = 1
    @task.priority = 1
    @belong_groups = Group.select_item_groups(@login_user.id)
    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @task }
    end
  end

  # GET /tasks/1/edit
  def edit
    @login_user =set_user
    @task = Task.find(params[:id])
    @belong_groups = Group.select_item_groups(@login_user.id)
  end

  # POST /tasks
  # POST /tasks.xml
  def create
    @login_user =set_user
    @task = Task.new(params[:task])
    @task.user_id = @login_user.id
    @belong_groups = Group.select_item_groups(@login_user.id)
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
    @login_user =set_user
    @task = Task.find(params[:id])
    @belong_groups = Group.select_item_groups(@login_user.id)
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
    @login_user =set_user
    @task = Task.find(params[:id])
    @task.destroy
    render :update do |page|
      task_id = params[:id]
      page[task_id].visual_effect :fade, :duration => 0.6
    end
  end

  def past_task_lists
    @login_user =set_user
     @tasks = Task.where(["user_id=?",@login_user]).latest
  end

#  private
#  def redirect_if_mobile
#    if request.mobile?
#        pa = params.dup
#        pa[:controller] = '/mo_tasks'
#        redirect_to pa
#    elsif request.smart_phone?
#        pa = params.dup
#        pa[:controller] = "/smart_phone"
#        redirect_to pa
#    end
#  end

end
