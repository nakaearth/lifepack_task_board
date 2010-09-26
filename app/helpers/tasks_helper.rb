module TasksHelper
  def status_value(status)
    if status==1
      "TODO"
    elsif status==2
      "DOING"
    elsif status==3
      "DONE"
    else
      "ERROR"
    end
  end


end
