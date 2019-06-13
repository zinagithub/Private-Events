class SessionsController < ApplicationController
  def new
  end

  def create
  	user = User.find_by_name(params[:name])
  	if user
  		log_in user
  		redirect_to user
  	else
  		render 'new'
  	end
  end

  def destroy
  	log_out if logged_in?
    redirect_to login_path
  end 

end
