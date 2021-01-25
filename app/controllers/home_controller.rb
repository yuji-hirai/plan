class HomeController < ApplicationController
  def top
    @search = Room.ransack(params[:q])
  end
end
