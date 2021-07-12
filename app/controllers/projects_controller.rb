class ProjectsController < ApplicationController
  # GET /projects
  def index
    
    projects = Project.all.order(:id)
    render json: projects.as_json(include: [todos: {only: [:id, :text, :isCompleted]}], only: [:id, :title])
    
  end

end
