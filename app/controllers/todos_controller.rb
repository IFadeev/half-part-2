class TodosController < ApplicationController
  # POST /todos
  # POST /todos.json
  def update
    Todo.find(params[:commit]).update(isCompleted:params[:isCompleted])
    redirect_to :root
  end
  
  def create
    @project = Project.find(params[:selected_project])
    @todo = @project.todos.create(params.require(:todo).permit(:text))

    redirect_to :root
  end
end
