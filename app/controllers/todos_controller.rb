class TodosController < ApplicationController
  # POST /todos
  def create

    if params[:title] = "Новая категория"
      
      project = Project.create( title: params[:new_title] )

    else

      project = Project.find_by( title: params[:title] ) 

    end
    
    Todo.create( text: params[:text], isCompleted: false, project_id: project.id )
    
    redirect_to projects_path

  end

  # PATCH /projects/project_id/todo/todo_id
  def update

    todo = Todo.find(params[:todo_id])

    todo.update(isCompleted: !todo.isCompleted)
    
    redirect_to projects_path
    
  end

end
