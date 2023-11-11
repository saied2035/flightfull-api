class Reservation < ApplicationRecord
  belongs_to :user
  belongs_to :airline

  default_scope { order(created_at: :desc) }
end
