class TasksController < ApplicationController
  load_and_authorize_resource

  def show; end

  def new
    @task = Task.new
  end

  def create
    @project = Project.find(task_params[:project_id])
    task = @project.tasks.create!(task_params)
    redirect_to @project if task.save
  end

  def edit; end

  def update
    if task.update(task_params)
      redirect_to task.project
    else
      render :edit
    end
  end

  def destroy
    task.destroy
    redirect_to task.project
  end

  private

  attr_reader :task

  def task_params
    params.require(:task).permit(:title, :description, :status, :project_id, :user_id)
  end
end
