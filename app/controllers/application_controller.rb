class ApplicationController < ActionController::API
  include ActionController::Cookies
  include JwtToken
  before_action :authenticate_request
  rescue_from ActionController::ParameterMissing do |exception|
    render json: { error: exception.message }, status: 400
  end

  private

  def authenticate_request
    token = request.cookies['token']
    user_id = JwtToken.decode(token)['user_id'].to_i
    @current_user = User.find(user_id)
  end
end
