class Owner2sController < ApplicationController

  def new
    @owner2 = Owner2.new
  end

  def create
    @owner2 = Owner2.new(owner_params)
    @owner2.spots = 0
    if @owner2.save
      session[:owner2_id] = @owner2.id
      redirect_to owner2_login_path
    else
      render :new
    end
  end

  def show
    @owner2 = Owner2.find(params[:id])
  end

  private

  def owner_params
    params.require(:owner2).permit(:username, :password, :name, :street, :city, :state)
  end

end
