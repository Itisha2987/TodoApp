class TodosController < ApplicationController

  def index
   @todo= Todo.all
    end

  def new
    @todo = Todo.new
  end

  def create
    todo_params =  params.require(:todo).permit(:item)
   @todo=Todo.new(todo_params)
   if @todo.save
   redirect_to(:action=>'index')
   else
     render new
   end

  end

  def destroy
    @todo =Todo.find(params[:id])
    @todo.destroy
    redirect_to(:action=>'index')
  end


  def edit
    @@todo = Todo.find(params[:id])
  end

  def update
  todo_params =  params.require(:todo).permit(:item)
  @@todo.update(todo_params)
  redirect_to(:action=>'index')
  end

  end


