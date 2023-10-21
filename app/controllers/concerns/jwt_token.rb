module JwtToken
  extend ActiveSupport::Concern

  SECRET_KEY = Rails.application.credentials.jwt_secret.to_s

  def self.encode(payload)
    JWT.encode(payload, SECRET_KEY)
  end

  def self.decode(token)
    JWT.decode(token, SECRET_KEY)[0]
  end
end
