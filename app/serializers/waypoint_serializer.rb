class WaypointSerializer < ActiveModel::Serializer
  attributes :id, :lat, :lng
  has_one :route
end
