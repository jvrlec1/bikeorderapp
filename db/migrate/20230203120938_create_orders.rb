class CreateOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :orders do |t|
      t.belongs_to :user, null: false, foreign_key: true
      t.belongs_to :model, null: false, foreign_key: true
      t.belongs_to :order_progress, default: 1, null: false, foreign_key: true
      t.datetime :service_date, null: false
      t.integer :model_year, null: false
      t.integer :mileage, null: false
      t.string :service_1_flag, default: 0, null: false
      t.string :service_2_flag, default: 0, null: false
      t.string :service_3_flag, default: 0, null: false
      t.string :service_4_flag, default: 0, null: false

      t.timestamps
    end
  end
end
