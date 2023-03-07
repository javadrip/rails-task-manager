class TasksController < ApplicationController
  before_action :set_task, only: %i[show edit update destroy]

  def index
    @tasks = Task.all
  end

  # Covered in before_action in line 2
  # def show
  #   @task = Task.find(params[:id])
  # end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(task_params)
    @task.save

    redirect_to task_path(@task)
  end

  # Covered in before_action in line 2
  # def edit
  #   @task = Task.find(params[:id])
  # end

  def update
    # Covered in before_action in line 2
    # @task = Task.find(params[:id])
    @task.update(task_params)

    redirect_to task_path(@task)
  end

  def destroy
    # Covered in before_action in line 2
    # @task = Task.find(params[:id])
    @task.destroy

    redirect_to tasks_path, status: :see_other
  end

  private

  def task_params
    params.require(:task).permit(:title, :details)
  end
end
