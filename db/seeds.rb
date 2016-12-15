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

user1 = User.create!({username: "mickyginger",
                      email: "mike.hayden@ga.co",
                      password: "password",
                      password_confirmation: "password"})

user2 = User.create!({username: "emilyi",
                      email: "emily.isacke@ga.co",
                      password: "password",
                      password_confirmation: "password"})

user3 = User.create!({username: "willc",
                      email: "will.cook@ga.co",
                      password: "password",
                      password_confirmation: "password"})

user4 = User.create!({username: "mattc",
                      email: "matt.calthrop@ga.co",
                      password: "password",
                      password_confirmation: "password"})

user4 = User.create!({username: "Smodger",
                      email: "smodger@example.com",
                      password: "password",
                      password_confirmation: "password"})

route1= Route.create!({
  title: "Glyders from Capel Curig to Cwm Idwal",
  route_description: "The best views in Snowdonia! Follow path to to Glyder Fawr (look behind you to admire views of Snowdon horseshoe) carry on along the Glyder until you rach Glyder Fach then descend down Pinnacle crag (care needed in bad conditions) follow path to car park and bus back to Capel Curig",
  number_of_participants: 4,
  conditions: "fair",
  season: "Autumn",
  user_id: user1.id
  })

waypoint1 = Waypoint.create!({
  lat: 53.0981138,
  lng: -4.0822417,
  route_id: route1.id,
  position: 0
  })

waypoint2 = Waypoint.create!({
  lat: 53.1067628,
  lng: -3.9500927,
  route_id: route1.id,
  position: 1
  })

waypoint3 = Waypoint.create!({
  lat: 53.1047592,
  lng: -3.9780787,
  route_id: route1.id,
  position: 2
  })

waypoint4 = Waypoint.create!({
  lat: 53.1014342,
  lng: -4.0289447,
  route_id: route1.id,
  position: 3
  })

waypoint5 = Waypoint.create!({
  lat: 53.1060332,
  lng: -4.0410667,
  route_id: route1.id,
  position: 4
  })

waypoint6 = Waypoint.create!({
  lat: 53.1120332,
  lng: -4.0287167,
  route_id: route1.id,
  position: 5
  })

waypoint7 = Waypoint.create!({
  lat: 53.1231392,
  lng: -4.0218097,
  route_id: route1.id,
  position: 6
  })

route2= Route.create!({
  title: "Snowdon horseshoe",
  route_description: "Start at pen y pass, ascend to the ridge line and traverse grib goch, follow the ridge line round to summit of Snowdon, selfie, descend on Pyg track",
  number_of_participants: 2,
  conditions: "Bright",
  season: "Summer",
  user_id: user2.id
    })

waypoint1 = Waypoint.create!({
  lat: 53.0804332,
  lng: -4.0235387,
  route_id: route2.id,
  position: 0
  })

waypoint2 = Waypoint.create!({
  lat: 53.0773842,
  lng: -4.0436977,
  route_id: route2.id,
  position: 1
  })

waypoint3 = Waypoint.create!({
  lat: 53.0768032,
  lng: -4.0553317,
  route_id: route2.id,
  position: 2
  })

waypoint4 = Waypoint.create!({
  lat: 53.0750312,
  lng: -4.0785817,
  route_id: route2.id,
  position: 3
  })

waypoint5 = Waypoint.create!({
  lat: 53.0684152,
  lng: -4.0790417,
  route_id: route2.id,
  position: 4
  })

waypoint6 = Waypoint.create!({
  lat: 53.0726839,
  lng: -4.0782631,
  route_id: route2.id,
  position: 5
  })

waypoint7 = Waypoint.create!({
  lat: 53.0769472,
  lng: -4.0438197,
  route_id: route2.id,
  position: 6
  })

waypoint8 = Waypoint.create!({
  lat: 53.0804042,
  lng: -4.0233737,
  route_id: route2.id,
  position: 7
  })
