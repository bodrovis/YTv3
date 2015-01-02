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

ActiveRecord::Schema.define(version: 20141224111838) do

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "token"
    t.string   "uid"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["token"], name: "index_users_on_token"
  add_index "users", ["uid"], name: "index_users_on_uid", unique: true

  create_table "videos", force: true do |t|
    t.string   "link"
    t.string   "title"
    t.datetime "published_at"
    t.integer  "likes"
    t.integer  "dislikes"
    t.string   "uid"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "videos", ["uid"], name: "index_videos_on_uid"

end
