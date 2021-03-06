class ProjectsController < ApplicationController
  load_and_authorize_resource

  def index
    @projects = Project.all
  end

  def show
    @task = Task.new
    @tasks = @project.tasks
    @assignment = Assignment.new
  end

  def create
    project = Project.create(project_params)
    if project.save
      redirect_to @project
    else
      render :new
    end
  end

  def update
    if project.update(project_params)
      redirect_to project
    else
      render :edit
    end
  end

  def destroy
    project.destroy
    redirect_to projects_path
  end

  private

  attr_reader :project

  def project_params
    params.require(:project).permit(:name, :summary, :start_date, :end_date)
  end
end
