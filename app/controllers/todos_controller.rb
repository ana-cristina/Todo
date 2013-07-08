class TodosController < ApplicationController

  def index
    @todo   = Tasks.where(:done => false)
    @task   = Tasks.new
    
    respond_to do |format|
      format.html
    end
  end
  def new
	@task = Task.new(params[:name], params[:done])
	if @task.save
		flash[:notice] = "Task succesfully created"
	else
		flash[:alert] = "Error creating task"
	end
	redirect_to 'index'
  end
  def list
  end
end
