class TodosController < ApplicationController
  def index
    @todos = Todo.all #returns all todos in the database
  end

  def show
    @todo = Todo.find(params[:id]) #finds a todo by the id passed in
  end

  def new
    @todo = Todo.new #creates a new page in memory (not in database)
  end

  def create
    @todo = Todo.new(todo_params)

    if @todo.save
      redirect_to todos_path
    else
      render :new
    end
  end

  private
    def todos_params
      params.require(:todo).permit(:title, :body, :completed)
    end
end
