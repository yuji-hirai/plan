class ReservationsController < ApplicationController
  before_action :set_room, only: [:show, :edit, :update, :destroy]

  def index
    @reservations = current_user.reservations.all
  end
  def new
    @reservation = Reservation.new
  end
  
 
    
  def create
      @reservation = Reservation.new(reservation_params)
      if @reservation.save
        redirect_to reservations_path
      else
      render "new"
      end
  end
  
  def edit
  end
  def destroy
    @reservation.destroy
    respond_to do |format|
      format.html { redirect_to reservations_url, notice: '部屋情報を削除しました' }
      format.json { head :no_content }
    end
  end
  
  def set_room
    @room = Room.find(params[:id])
  end
  
  def reservation_params
    params.require(:reservation).permit(:start_day, :end_day, :number, :room_id, :user_id)
  end
end
