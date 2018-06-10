class TodosController < ApplicationController

  before_action :set_todo, :only => [:show, :edit, :update, :destroy]
  # 以下接續原有程式碼
  def index
    @todos = Todo.all
  end

  def new
    @todo = Todo.new
  end

  def create
    @todo = Todo.new(todo_params)
    if @todo.save
       redirect_to todos_url
    else
      render :action => :new
    end
  end


  def show
    @todo = Todo.find(params[:id])
  end

  def edit
    @todo = Todo.find(params[:id])
  end

  def update
    @todo = Todo.find(params[:id])
    @todo.update_attributes(todo_params)
        
    redirect_to todos_path(@todo)
    
  end

  def destroy
    @todo = Todo.find(params[:id])
    @todo.destroy

    redirect_to todos_url
  end



private
  def set_todo
    @todo = Todo.find(params[:id])
  end

  def todo_params
    params.require(:todo).permit(:event, :due_date, :description, :finish)
  end

end
