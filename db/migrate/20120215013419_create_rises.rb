class CreateRises < ActiveRecord::Migration
  def change
    create_table :rises do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
