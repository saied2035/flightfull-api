class AuthController < ApplicationController
  skip_before_action :authenticate_request
  def logged_in?
    if cookies[:token].present?
      render json: { status: 200 }, status: :ok
    else
      render json: { status: 401 }, status: 401
    end
  end

  def signup
    user = User.new(user_params)
    if user.save
      token = JwtToken.encode({ user_id: user.id })
      cookies.signed[:token] = { value: token, httponly: true }
      render json: { status: 200 }, status: :ok
    else
      render json: { errors: user.errors.full_messages }, status: 400
    end
  end

  def login
    user = User.find_by_email(params[:email])

    unless user.present?
      render json: { error: 'There is no user with this email or email is not provided.' }, status: :not_found
      return
    end
    if user&.authenticate(params[:password])
      token = JwtToken.encode({ user_id: user.id })
      cookies.signed[:token] = { value: token, httponly: true }
      render json: { status: 200 }, status: :ok
    else
      render json: { error: 'Password is wrong.' }, status: :unauthorized
    end
  end

  def signout
    cookies.delete(:token)
    render status: :ok
  end

  private

  def user_params
    params.require(:auth).permit(:name, :email, :password, :password_confirmation)
  end
end