class ReservationsController < ApplicationController
  def index
    reservations = Reservation.all
    render json: { reservations: }, status: :ok
  end

  def create
    reservation = @current_user.reservations.build(reservation_params)
    if reservation.save
      reservations = @current_user.reservations
      render json: { reservations: }, status: :created
    else
      render json: { error: reservation.errors.full_messages }, status: 400
    end
  end

  def destroy
    @current_user.reservations.destroy(Reservation.find(params[:id]))
    reservations = @current_user.reservations
    render json: { reservations: }, status: :ok
  end
  
  def reservation_params
    params.require(:reservation).permit(:city, :date, :expiration_date, :airline_id)
  end
end
