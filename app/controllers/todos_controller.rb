class TodosController < ApplicationController
  skip_before_action :verify_authenticity_token
  # POST /todos
  def create

    if params[:title] == "create"
      
      project = Project.create( title: params[:new_title] )

    else

      project = Project.find_by( title: params[:title] ) 

    end
    
    todo = Todo.create( text: params[:text], isCompleted: false, project_id: project.id )
    
  end

  # PATCH /projects/project_id/todo/todo_id
  def update

    todo = Todo.find(params[:todo_id])

    todo.update(isCompleted: !todo.isCompleted)
    
  end
end
