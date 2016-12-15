class Route < ApplicationRecord
  belongs_to :user
  has_many :waypoints, -> { order(position: :asc) }, dependent: :destroy
end
