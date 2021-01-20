class HomeController < ApplicationController
  
  def top
    @search = Room.ransack(params[:q])
    
    if @seach
  　    @rooms = @search.result
  　   end
  end
  
end
