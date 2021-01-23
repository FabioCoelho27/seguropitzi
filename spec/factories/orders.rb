FactoryBot.define do
  factory :order do
    device_model { "MyString" }
    device_imei { "MyString" }
    annual_price { 1.5 }
    number_installments { "MyString" }
    user { nil }
  end
end
