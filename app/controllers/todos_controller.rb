class TodosController < ApplicationController

  def index
    @todo   = Task.where(:done => false)
    @task   = Task.new
    @lists  = List.all
    @list   = List.new
    
    respond_to do |format|
      format.html
    end
  end
  def create
	@task = Task.new(params[:name], params[:done])
	if @task.save
		flash[:notice] = "Task succesfully created"
	else
		flash[:alert] = "Error creating task"
	end
	% TODO refresh
  end
  
end
