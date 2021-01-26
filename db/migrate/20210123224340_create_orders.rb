class CreateOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :orders do |t|
      t.string :device_model
      t.string :device_imei
      t.float :yearly_price
      t.integer :installments
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
