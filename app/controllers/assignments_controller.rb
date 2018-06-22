class AssignmentsController < ApplicationController
  def create
    @task = Task.find(assignment_params[:task_id])
    @project = @task.project
    assignment = @task.assignments.build(assignment_params)
    redirect_to @project if assignment.save
  end

  def destroy
    @assignment = Assignment.find(params[:id])
    @task = assignment.task
    @project = @task.project
    assignment.destroy
    redirect_to @project
  end

  private

  attr_reader :assignment

  def assignment_params
    params.require(:assignment).permit(:user_id, :task_id)
  end
end
