# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2022_07_19_135459) do
  create_table "bookings", force: :cascade do |t|
    t.integer "flight_id", null: false
    t.integer "wizard_id", null: false
    t.integer "nbpassengers"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["flight_id"], name: "index_bookings_on_flight_id"
    t.index ["wizard_id"], name: "index_bookings_on_wizard_id"
  end

  create_table "flights", force: :cascade do |t|
    t.datetime "datetime_depart"
    t.integer "duration"
    t.integer "hippoport_depart_id", null: false
    t.integer "hippoport_arrival_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["hippoport_arrival_id"], name: "index_flights_on_hippoport_arrival_id"
    t.index ["hippoport_depart_id"], name: "index_flights_on_hippoport_depart_id"
  end

  create_table "hippoports", force: :cascade do |t|
    t.string "code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "wizards", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "bookings", "flights"
  add_foreign_key "bookings", "wizards"
  add_foreign_key "flights", "hippoports", column: "hippoport_arrival_id"
  add_foreign_key "flights", "hippoports", column: "hippoport_depart_id"
end
