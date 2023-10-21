class Airline < ApplicationRecord
    validates :name, presence: true, uniqueness: true
    validates :description, presence: true
    validates :img_src, presence: true, format: { with: /(^https|base64)/, message: "image src should be base64 string or start with image valid url" }
    validates :fee, presence: true, numericality: true
    validates :option_to_purchase, presence: true, numericality: true
    validates :total_amount_payable, presence: true, numericality: true
    validates :facebook, presence: true, format: { 
    with: /^https\:\/\/(www.facebook|facebook)\.com\/[^?.=*&^]+$/ 
    }
    validates :twitter, presence: true, format: { 
    with: /^https\:\/\/(www.twitter|twitter)\.com\/[^?.=*&^]+$/ 
    }
    validates :linkedin, presence: true, format: { 
    with: /^https\:\/\/(www.linkedin|linkedin)\.com\/[^?.=*&^]+$/ 
    }
end
