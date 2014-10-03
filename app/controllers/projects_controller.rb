class ProjectsController < ApplicationController
  load_and_authorize_resource
  before_filter :require_login


  def index
  	@project = Project.all
  end

  def new
    @project = Project.new
  end

  def create
    @project = Project.new(params[:project])
    @project.user_id = current_user.id
    if @project.save!
      flash[:notice] = "Project Added Successfully"
     bridgeEntry = ProjectUser.new
     bridgeEntry.user_id = current_user.id
     bridgeEntry.project_id =  @project.id
     bridgeEntry.save!  
     redirect_to projects_path
    else
      render :new, :alert => "Error Occured..!!!"
    end
     #@projectuser = current_user.project_users.build 
    # a.user_id = current_user.id
     # @projectuser.project_id = @project.id
     # @projectuser.save!

  end

  def assign
    #  @projectuser = current_user.project_user.new 
    # # a.user_id = current_user.id
    #  @projectuser.project_id = params[:id]
    #  @projectuser.save!

     bridgeEntry = ProjectUser.new
     bridgeEntry.user_id = current_user.id
     bridgeEntry.project_id = params[:id]
     if bridgeEntry.save!
      flash[:notice] = "Project Assigned Successfully"
     else
      flash[:notice] = "Failed to Assign"
    end
  end
end
