class WaypointSerializer < ActiveModel::Serializer
  attributes :id, :lat, :lng, :route, :position
  has_one :route
end
