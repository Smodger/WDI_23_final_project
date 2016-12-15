class AddPositionToWaypoints < ActiveRecord::Migration[5.0]
  def change
    add_column :waypoints, :position, :integer, default: 0
  end
end
