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

ActiveRecord::Schema.define(version: 2021_05_20_171035) do

  create_table "fbcs", force: :cascade do |t|
    t.string "project"
    t.string "status"
    t.string "CSM"
    t.string "Support_Engineer"
    t.string "Equipment"
    t.string "Warranty_Start_Date"
    t.string "Staff_Dashboard"
    t.integer "Live_Locations"
    t.integer "Total_Locations"
    t.string "Support_Coverage"
    t.string "SLA"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "fbts", force: :cascade do |t|
    t.string "project"
    t.string "status"
    t.string "radius_poc"
    t.string "support_engineer"
    t.string "equipment"
    t.string "warranty_start_date"
    t.string "number_of_locations"
    t.string "support_coverage"
    t.string "sla"
    t.string "tent_set_type"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
