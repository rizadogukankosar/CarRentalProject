class ReservationsController < ApplicationController
  def index
    @reservations= Reservation.all
  end

  # GET /rezs/1 or /rezs/1.json
  def show
  end

  # GET /rezs/new
  def new
    @reservation = Reservation.new
  end

  # GET /rezs/1/edit
  def edit
  end

  def create
    @car = Car.find(params[:car_id])
    @reservation = @car.reservations.create(reservation_params)
    redirect_to car_path(@car)
  end

  def destroy
    @car = Car.find(params[:car_id])
    @reservation = @car.reservations.find(params[:id])
    @reservation.destroy
    redirect_to car_reservations_path
  end


  private
  # Use callbacks to share common setup or constraints between actions.
  def set_reservation
    @reservation = Reservation.find(params[:id])
  end

  def reservation_params
    params.require(:reservation).permit(:name, :surname, :firstDay , :countOfDay)
  end
end
