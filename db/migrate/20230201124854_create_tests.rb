class CreateTests < ActiveRecord::Migration[7.0]
  def change
    create_table :tests do |t|
      t.string :text
      t.decimal :number

      t.timestamps
    end
  end
end
