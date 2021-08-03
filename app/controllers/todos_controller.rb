class TodosController < ApplicationController
  skip_before_action :verify_authenticity_token
  # POST /todos
  def create

    if params[:id] == 0
      
      project = Project.create( title: params[:title] )

    else

      project = Project.find( params[:id] ) 

    end
    
    todo = Todo.create( text: params[:text], isCompleted: false, project_id: project.id )
    
    if params[:id] == 0

      render json: project.as_json(include: [todos: {only: [:id, :text, :isCompleted, :project_id]}], only: [:id, :title]), status: 201

    else
    
      render json: todo.as_json, status: 201
    end
  end

  # PATCH /projects/project_id/todo/todo_id
  def update

    todo = Todo.find(params[:todo_id])

    todo.update(isCompleted: !todo.isCompleted)
    
    render json: todo.as_json, status: :ok
  end
end
