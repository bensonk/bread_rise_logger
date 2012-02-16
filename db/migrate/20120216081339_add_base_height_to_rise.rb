class AddBaseHeightToRise < ActiveRecord::Migration
  def change
    add_column :rises, :base_height, :integer, :default => 0
  end
end
