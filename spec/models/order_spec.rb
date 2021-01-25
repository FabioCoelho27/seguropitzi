require 'rails_helper'

RSpec.describe Order, type: :model do
  it { is_expected.to validate_presence_of(:device_model) }
  it { is_expected.to validate_presence_of(:device_imei) }
  it { is_expected.to validate_presence_of(:annual_price) }
  it { is_expected.to validate_presence_of(:number_installments) }
  it { is_expected.to belong_to (:user) }
end
