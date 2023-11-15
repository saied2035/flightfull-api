class ReservationsController < ApplicationController
  def index
    reservations = Reservation.all
    render json: { reservations: }, status: :ok
  end

  def create
    reservation = Reservation.new(reservation_params)
    airlines = Airline.all
    airlines.each do |airline|
      puts airline.name
      puts airline.id
      puts airline.id == params[:reservation][:airline_id].to_i
    end
    airline = Airline.find(params[:reservation][:airline_id].to_i) 
    reservation.user = @current_user
    reservation.airline = airline
    if reservation.save
      reservations = @current_user.reservations
      render json: { reservations: }, status: :created
    else
      render json: { error: reservation.errors.full_messages }, status: 400
    end
  end

  def destroy
    reservation = Reservation.find(params[:id])
    reservation.destroy
    reservations = @current_user.reservations
    render json: { reservations: }, status: :ok
  end

  def reservation_params
    params.require(:reservation).permit(:city, :date, :expiration_date, :airline_id)
  end
end
