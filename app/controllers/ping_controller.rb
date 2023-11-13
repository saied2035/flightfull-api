class AuthController < ApplicationController
  def ping
    render status: 200
  end  
end    