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

ActiveRecord::Schema.define(version: 20141223214217) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "brands", force: :cascade do |t|
    t.string   "name"
    t.string   "logo_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "concierges", force: :cascade do |t|
    t.integer  "phone"
    t.string   "name"
    t.string   "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "condos", force: :cascade do |t|
    t.string   "address"
    t.integer  "floor"
    t.integer  "room"
    t.integer  "contact"
    t.string   "manager"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "devices", force: :cascade do |t|
    t.string   "endpoint_arn"
    t.integer  "resident"
    t.boolean  "active_status"
    t.integer  "resident_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "devices", ["resident_id"], name: "index_devices_on_resident_id", using: :btree

  create_table "mailboxes", force: :cascade do |t|
    t.integer  "box_number"
    t.integer  "resident_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "mailboxes", ["resident_id"], name: "index_mailboxes_on_resident_id", using: :btree

  create_table "messages", force: :cascade do |t|
    t.string   "content"
    t.string   "content_type"
    t.integer  "concierge_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "messages", ["concierge_id"], name: "index_messages_on_concierge_id", using: :btree

  create_table "residents", force: :cascade do |t|
    t.string   "name"
    t.integer  "phone"
    t.string   "email"
    t.integer  "room_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "residents", ["room_id"], name: "index_residents_on_room_id", using: :btree

  create_table "rooms", force: :cascade do |t|
    t.string   "suite_number"
    t.integer  "resident"
    t.string   "owner_email"
    t.integer  "condo_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "rooms", ["condo_id"], name: "index_rooms_on_condo_id", using: :btree

  create_table "spaces", force: :cascade do |t|
    t.string   "name"
    t.integer  "capacity"
    t.integer  "condo_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "spaces", ["condo_id"], name: "index_spaces_on_condo_id", using: :btree

end
