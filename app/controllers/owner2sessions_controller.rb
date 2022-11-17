class Owner2sessionsController < ApplicationController

  def login
  end

  def create
    @owner2 = Owner2.find_by(username: params[:username])
    ##authenticate user credentials
    if !!@owner2 && @owner2.authenticate(params[:password])
      #set session and redirect on success
      session[:owner2_id] = @owner2.id
      redirect_to owner2_path(@owner2)
    else
      #error message on fail
      message = "Something went wrong! Make sure your username and password are correct."
      redirect_to owner2_login_path, notice: message
    end
  end

end
