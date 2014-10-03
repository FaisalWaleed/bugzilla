class BugsController < ApplicationController
	before_filter :require_login


  def index
    @projkt = Project.find(params[:project_id])
    @title = @projkt.title
    @project_bugs = @projkt.bugs
  end

  def create
  	@bug = Bug.new(params[:bug])
  	@bug.save!
    redirect_to projects_path, :alert => "Bug Reported Successfully."
  end

  def new
    @project = Project.find(params[:project_id])
    @bug = @project.bugs.build
  end
end
