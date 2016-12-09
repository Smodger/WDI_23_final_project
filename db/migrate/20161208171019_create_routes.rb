class CreateRoutes < ActiveRecord::Migration[5.0]
  def change
    create_table :routes do |t|
      t.string :title
      t.string :route_description
      t.integer :number_of_participants
      t.string :conditions
      t.string :season
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
