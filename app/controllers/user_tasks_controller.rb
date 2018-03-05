class UserTasksController < ApplicationController
  def create
    UserTask.create(user: current_user, task_id: params[:id])
    redirect_back(fallback_location: root_path)
  end

  def destroy
    UserTask.find_by(user: current_user, task_id: params[:id]).destroy
    redirect_back(fallback_location: root_path)
  end

end
