class Order < ApplicationRecord
  belongs_to :user
  validates :device_model, presence: true 
  validates :device_imei, presence: true
  validates :installments, presence: true
  validates :yearly_price, presence: true
end
