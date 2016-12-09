class RouteSerializer < ActiveModel::Serializer
  attributes :id, :title, :route_description, :number_of_participants, :conditions, :season
  has_one :user
  has_many :waypoints 
end
