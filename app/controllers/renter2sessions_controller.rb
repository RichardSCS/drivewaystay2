class Renter2sessionsController < ApplicationController

  def login
  end
  
  def create
    @renter2 = Renter2.find_by(username: params[:username])
    ##authenticate user credentials
    if !!@renter2 && @renter2.authenticate(params[:password])
      #set session and redirect on success
      session[:renter2_id] = @renter2.id
      redirect_to renter2_path(@renter2)
    else
      #error message on fail
      message = "Something went wrong! Make sure your username and password are correct."
      redirect_to renter2_login_path, notice: message
    end
  end
  
end
