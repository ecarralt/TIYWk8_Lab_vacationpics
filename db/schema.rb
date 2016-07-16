# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20160716204529) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "photos", force: :cascade do |t|
    t.string   "title"
    t.string   "location"
    t.string   "latitude"
    t.string   "longitude"
    t.string   "center_location"
    t.string   "photofile_id"
    t.integer  "vacation_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "photos", ["vacation_id"], name: "index_photos_on_vacation_id", using: :btree

  create_table "refile_attachments", force: :cascade do |t|
    t.string "namespace", null: false
  end

  add_index "refile_attachments", ["namespace"], name: "index_refile_attachments_on_namespace", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "location"
    t.string   "latitude"
    t.string   "longitude"
    t.string   "username"
    t.string   "password_digest", null: false
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "vacations", force: :cascade do |t|
    t.string   "name"
    t.integer  "user_id"
    t.string   "center_location"
    t.string   "ctr_loc_lat"
    t.string   "ctr_loc_lon"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "vacations", ["user_id"], name: "index_vacations_on_user_id", using: :btree

end
