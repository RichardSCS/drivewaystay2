class HomeController < ApplicationController
  def index
    @owner2s = Owner2.all
  end
end
