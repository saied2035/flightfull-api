class User < ApplicationRecord
  has_many :reservations, lambda {
                            joins(:airline).select('reservations.*, airlines.img_src, 
                            airlines.total_amount_payable').order('created_at DESC')
                          }
  has_many :airlines, -> { order('created_at DESC') }
  has_secure_password

  validates :name, presence: true
  validates :email, presence: true, uniqueness: true
  validates :password_confirmation, presence: true
end
