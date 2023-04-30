class CreateOderItems < ActiveRecord::Migration[6.1]
  def change
    create_table :oder_items do |t|

      t.integer :order_id,    null: false
      t.integer :item_id,     null: false
      t.integer :amount,      null: false
      t.integer :order_price, null: false
      t.timestamps            null: false
    end
  end
end
