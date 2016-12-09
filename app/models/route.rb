class Route < ApplicationRecord
  belongs_to :user
  has_many :waypoints, dependent: :destroy
end
