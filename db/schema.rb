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

ActiveRecord::Schema.define(version: 20160110190946) do

  create_table "kids", force: :cascade do |t|
    t.string   "name"
    t.integer  "parent_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "kids", ["parent_id"], name: "index_kids_on_parent_id"

  create_table "kids_playdates", force: :cascade do |t|
    t.integer  "kid_id"
    t.integer  "playdate_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "kids_playdates", ["kid_id"], name: "index_kids_playdates_on_kid_id"
  add_index "kids_playdates", ["playdate_id"], name: "index_kids_playdates_on_playdate_id"

  create_table "parents", force: :cascade do |t|
    t.string   "name"
    t.string   "gender"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "username"
    t.string   "password_digest"
  end

  create_table "playdates", force: :cascade do |t|
    t.string   "location"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
