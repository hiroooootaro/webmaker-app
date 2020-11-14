class CreateOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :orders do |t|
      t.string :order_message,      null: false
      t.integer :template_id,       null: false
      t.integer :category_id,       null: false
      t.integer :user_name,         null: false
      t.timestamps
    end
  end
end
