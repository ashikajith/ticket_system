class ProjectsController < BasicController

  def index
    @projects = Project.all
  end

  def edit
    #code
  end

  def new
    role = Role.where(role_name: Role::PROJECT_MANAGER)
    @project_managers = User.where(role_id: role)
  end

  def create
    @project = Project.new(create_project_params)
    @project.save!
    redirect_to projects_path
  end


  private

    def create_project_params
      params.require(:project).permit(:project_name, :status, :description, :user_id)
    end
end
