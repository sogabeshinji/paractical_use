class CreateOrders < ActiveRecord::Migration[6.1]
  def change
    create_table :orders do |t|

      t.integer :customer_id,     null: false
      t.integer :postage,         null: false
      t.integer :billing_amount,  null: false
      t.integer :payment_method,  null: false
      t.string :address,          null: false
      t.string :postal_code,      null: false
      t.string :direction,        null: false
      t.timestamps                null: false
    end
  end
end
