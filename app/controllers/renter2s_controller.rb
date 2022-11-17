class Renter2sController < ApplicationController

  def new
    @renter2 = Renter2.new
  end

  def create
    @renter2 = Renter2.new(renter_params)
    if @renter2.save
      session[:renter2_id] = @renter2.id
      redirect_to renter2_login_path
    else
      render :new
    end
  end

  def show
    @renter2 = Renter2.find(params[:id])
  end

  private

  def renter_params
    params.require(:renter2).permit(:username, :password, :name)
  end

end
