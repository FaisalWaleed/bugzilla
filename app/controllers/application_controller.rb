class ApplicationController < ActionController::Base
  protect_from_forgery


  rescue_from CanCan::AccessDenied do |exception|
  	flash[:error] = "Access denied."
  	redirect_to projects_path
	end

	def not_authenticated
    redirect_to login_url, :alert => "First log in to view this page."
  end
end
