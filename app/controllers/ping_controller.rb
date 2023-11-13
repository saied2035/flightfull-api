class PingController < ApplicationController
  skip_before_action :authenticate_request
  def ping
    render status: 200
  end
end
