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

ActiveRecord::Schema.define(version: 20160819014724) do

  create_table "airports", force: :cascade do |t|
    t.string   "code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "flights", force: :cascade do |t|
    t.integer  "from_airport_id"
    t.integer  "to_airport_id"
    t.datetime "departs_at"
    t.float    "duration_in_hours"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.index ["departs_at"], name: "index_flights_on_departs_at"
    t.index ["from_airport_id", "to_airport_id"], name: "index_flights_on_from_airport_id_and_to_airport_id"
    t.index ["from_airport_id"], name: "index_flights_on_from_airport_id"
    t.index ["to_airport_id"], name: "index_flights_on_to_airport_id"
  end

end
