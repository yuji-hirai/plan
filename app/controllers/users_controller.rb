class UsersController < ApplicationController
  def show
    @user = User.find(current_user.id)
  end
  def index
    @user = User.find(current_user.id)
    @rooms = @user.rooms
  end
end
