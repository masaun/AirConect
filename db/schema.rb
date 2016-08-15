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

ActiveRecord::Schema.define(version: 20160815030952) do

  create_table "rooms", force: :cascade do |t|
    t.string   "home_type",    limit: 255
    t.string   "room_type",    limit: 255
    t.integer  "accommodate",  limit: 4
    t.integer  "bed_room",     limit: 4
    t.integer  "bath_room",    limit: 4
    t.string   "listing_name", limit: 255
    t.text     "summary",      limit: 65535
    t.string   "address",      limit: 255
    t.boolean  "is_tv"
    t.boolean  "is_kitchen"
    t.boolean  "is_air"
    t.boolean  "is_heating"
    t.boolean  "is_internet"
    t.integer  "price",        limit: 4
    t.boolean  "active"
    t.integer  "user_id",      limit: 4
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  add_index "rooms", ["user_id"], name: "index_rooms_on_user_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "email",                  limit: 255,   default: "", null: false
    t.string   "encrypted_password",     limit: 255,   default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,     default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.datetime "created_at",                                        null: false
    t.datetime "updated_at",                                        null: false
    t.string   "fullname",               limit: 255
    t.string   "confirmation_token",     limit: 255
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "provider",               limit: 255
    t.string   "uid",                    limit: 255
    t.string   "image",                  limit: 255
    t.string   "phone_number",           limit: 255
    t.text     "description",            limit: 65535
  end

  add_index "users", ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true, using: :btree
  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  add_foreign_key "rooms", "users"
end
