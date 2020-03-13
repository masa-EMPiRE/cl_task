class TasksController < ApplicationController

  def show 
    @task = Task.find(params[:id])
  end

  def index
    @task = Task.new
    @tasks = Task.all
  end

  def create
    @task = Task.new(task_params)
    @task.save
    redirect_to "/tasks"
  end

  private
  def task_params
    params.require(:task).permit(:title, :body)
  end

end
