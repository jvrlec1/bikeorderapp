class CreateModels < ActiveRecord::Migration[7.0]
  def change
    create_table :models do |t|
      t.belongs_to :brand, null: false, foreign_key: true
      t.string :name, null: false
      t.integer :last_supported_year, null: false
      t.decimal :service_1, precision: 10, scale: 2, null: false
      t.decimal :service_2, precision: 10, scale: 2, null: false
      t.decimal :service_3, precision: 10, scale: 2, null: false
      t.decimal :service_4, precision: 10, scale: 2, null: false

      t.timestamps
    end
  end
end
