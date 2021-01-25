class Order < ApplicationRecord
  belongs_to :user
  validates :device_model, presence: true 
  validates :device_imei, presence: true
  validates :number_installments, presence: true
  validates :annual_price, presence: true
end
