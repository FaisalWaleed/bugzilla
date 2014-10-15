class UsersController < ApplicationController

	# before_filter :require_login, :except => [:new , :index]

  def index
  end
  
	def new
  	@user = User.new
	end

	def create
    begin
    	@user = User.new(params[:user])
    	@user.save!
    	if(@user.save)
      	redirect_to root_url
      	flash[:notice] = "Signed Up Successfully"
    	else
      	render :new, :alert => "Sign Up failed..!!!"
    	end
    rescue
      render :new
    end
	end
end
