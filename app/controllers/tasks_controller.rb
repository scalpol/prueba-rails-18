class TasksController < ApplicationController
  before_action :authenticate_user! , except: :index

  def index
    @tasks = Task.all
  end

  def show
    @task = Task.find(params[:id])
    @ranking = @task.users.limit(5).sort_by(&:created_at)
    @users = @task.users
  end

end
