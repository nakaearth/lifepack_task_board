class MoTasksController < ApplicationController
  def index
    @login_user =set_user
  end

end
