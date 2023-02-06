class DropTests < ActiveRecord::Migration[7.0]
  def change
    drop_table :tests
  end
end
