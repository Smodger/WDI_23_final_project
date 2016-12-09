# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

["users", "routes", "waypoints"].each do |table_name|
  ActiveRecord::Base.connection.execute("TRUNCATE #{table_name} RESTART IDENTITY CASCADE")
end
#
# User.create!({
#   username: "mickyginger",
#   email: "mike.hayden@ga.co",
#   password: "password",
#   password_confirmation: "password"
# },{
#   username: "emilyi",
#   email: "emily.isacke@ga.co",
#   password: "password",
#   password_confirmation: "password"
# }])

user1 = User.create!({username: "mickyginger",
                      email: "mike.hayden@ga.co",
                      password: "password",
                      password_confirmation: "password"})

puts user1.username + " was created from nothing!"

route1= Route.create!({
  title: "Fat loss for cookimonsta's",
  route_description: "A short walk straight up the mtn.",
  number_of_participants: 4,
  conditions: "fair",
  season: "Fall 2017",
  user_id: user1.id
  })

puts route1.title + ", was created"

waypoint1 = Waypoint.create!({
  lat: 51,
  lng: 39,
  route_id: route1.id
  })

puts "waypoint1 created"

waypoint2 = Waypoint.create!({
  lat: 51,
  lng: 39.5,
  route_id: route1.id
  })

puts "waypoint1 created"
