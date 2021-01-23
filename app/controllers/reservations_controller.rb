class ReservationsController < ApplicationController
  before_action :set_room, only: [:show, :edit, :update, :destroy]

  def index
  end
  def new
    @reservation = Reservation.new
  
  # 　@room = Room.find(params[:id])
  end
  def create
  @reservation = current_user.reservations.create(reservation_params)
     redirect_to root_path notice:"予約が完了しました"

    # respond_to do |format|
    #   if @reservation.save
    #     format.html { redirect_to @reservation, notice: '部屋の登録が完了しました' }
    #     # format.json { render :show, status: :created, location: @reservation }
    #   else
    #     format.html { render :new }
    #     # format.json { render json: @reservation.errors, status: :unprocessable_entity }
    #   end
    # end
  end
  
  def edit
  end
  def set_room
    @room = Room.find(params[:id])
  end
  
  def reservation_params
    params.require(:reservation).permit(:start_day, :end_day, :number, :address, :room_id, :user_id)
  end
end
