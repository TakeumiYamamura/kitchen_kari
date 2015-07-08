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

ActiveRecord::Schema.define(version: 20150621005158) do

  create_table "books", force: true do |t|
    t.integer  "user_id"
    t.integer  "product_id"
    t.integer  "persons"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.date     "date"
    t.integer  "start_time"
  end

  create_table "cooks_schedules", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.date     "date"
    t.integer  "start_time"
    t.integer  "user_id"
    t.integer  "flag"
  end

  create_table "images", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
    t.integer  "product_id"
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
  end

  create_table "places", force: true do |t|
    t.string "name"
  end

  create_table "products", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "explanation"
    t.integer  "user_id"
    t.string   "title"
    t.integer  "price"
    t.integer  "capacity"
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
    t.date     "date"
    t.time     "start_time"
    t.time     "finish_time"
    t.float    "latitude",            limit: 24
    t.float    "longitude",           limit: 24
    t.string   "address"
  end

  create_table "users", force: true do |t|
    t.string   "email",                             default: "", null: false
    t.string   "encrypted_password",                default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                     default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
    t.string   "area"
    t.text     "address"
    t.integer  "tel"
    t.float    "latitude",               limit: 24
    t.float    "longitude",              limit: 24
    t.integer  "user_type"
    t.string   "name"
    t.text     "profile"
    t.string   "provider"
    t.string   "uid"
    t.string   "screen_name"
    t.string   "username"
    t.integer  "place_id"
    t.text     "short_introduction"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["place_id"], name: "index_users_on_place_id", using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
