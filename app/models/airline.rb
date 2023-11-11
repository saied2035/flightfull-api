class Airline < ApplicationRecord
  belongs_to :user, optional: true
  has_many :reservations, dependent: :destroy
  validates :name, presence: true, uniqueness: true
  validates :description, presence: true
  validates :img_src, presence: true,
                      format: { with: /(^https|base64)/,
                                message: 'image src should be base64 string or start with image valid url' }
  validates :fee, presence: true, numericality: true
  validates :option_to_purchase, presence: true, numericality: true
  validates :total_amount_payable, presence: true, numericality: true
  validates :facebook, presence: true, format: {
    with: %r{\Ahttps://(www.facebook|facebook)\.com/[^?=*&^]+\z}
  }
  validates :twitter, presence: true, format: {
    with: %r{\Ahttps://(www.twitter|twitter)\.com/[^?=*&^]+\z}
  }
  validates :linkedin, presence: true, format: {
    with: %r{\Ahttps://(www.linkedin|linkedin)\.com/[^?=*&^]+\z}
  }

  default_scope { order(created_at: :desc) }
end
