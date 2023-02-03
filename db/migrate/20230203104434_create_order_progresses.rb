class CreateOrderProgresses < ActiveRecord::Migration[7.0]
  def change
    create_table :order_progresses do |t|
      t.string :name, null: false

      t.timestamps
    end
  end
end
