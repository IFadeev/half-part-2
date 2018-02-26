class TodosController < ApplicationController
  # POST /todos
  # POST /todos.json
  def create
    @project = Project.find(params[:selected_project])
    @todo = @project.todos.create(params.require(:todo).permit(:text))

    redirect_to :root
  end

  # PATCH/PUT /todos/1
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_todo
      @todo = Todo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def todo_params
      params.require(:todo).permit(:text, :isCompleted, :project_id)
    end
end
