class AirlinesController < ApplicationController
  def create
    airline = @current_user.airlines.build(airline_params)
    if airline.save
      airlines = Airline.all
      user_airlines = @current_user.airlines
      render json: { airlines:, user_airlines: }, status: :created
    else
      render json: { error: airline.errors.full_messages }, status: 400
    end
  end

  def destroy
    @current_user.airlines.destroy(Airline.find(params[:id].to_i))
    airlines = Airline.all
    user_airlines = @current_user.airlines
    render json: { airlines:, user_airlines: }, status: :ok
  end

  private

  def airline_params
    params.require(:airline).permit(:name, :description, :img_src, :fee, :option_to_purchase,
                                    :total_amount_payable, :facebook, :twitter, :linkedin)
  end
end
