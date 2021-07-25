class ProjectsController < ApplicationController
  skip_before_action :verify_authenticity_token
  # GET /projects
  def index
    
    projects = Project.all.order(:id)
    render json: projects.as_json(include: [todos: {only: [:id, :text, :isCompleted, :project_id]}], only: [:id, :title])
    
  end

end
