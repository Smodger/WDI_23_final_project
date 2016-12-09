# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20161208173548) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "routes", force: :cascade do |t|
    t.string   "title"
    t.string   "route_description"
    t.integer  "number_of_participants"
    t.string   "conditions"
    t.string   "season"
    t.integer  "user_id"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.index ["user_id"], name: "index_routes_on_user_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "username"
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "waypoints", force: :cascade do |t|
    t.float    "lat"
    t.float    "lng"
    t.integer  "route_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["route_id"], name: "index_waypoints_on_route_id", using: :btree
  end

  add_foreign_key "routes", "users"
  add_foreign_key "waypoints", "routes"
end
