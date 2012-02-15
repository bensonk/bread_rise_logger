class CreateReadings < ActiveRecord::Migration
  def change
    create_table :readings do |t|
      t.float :height
      t.integer :intensity
      t.integer :rise_id

      t.timestamps
    end
  end
end
