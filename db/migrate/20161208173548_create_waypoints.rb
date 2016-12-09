class CreateWaypoints < ActiveRecord::Migration[5.0]
  def change
    create_table :waypoints do |t|
      t.float :lat
      t.float :lng
      t.references :route, foreign_key: true

      t.timestamps
    end
  end
end
