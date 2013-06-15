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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130615143142) do

  create_table "activities", :force => true do |t|
    t.string   "kind"
    t.string   "guid"
    t.string   "title"
    t.text     "summary"
    t.string   "source_url"
    t.datetime "published_at"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "repositories", :force => true do |t|
    t.string   "url"
    t.integer  "team_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  create_table "activities", :force => true do |t|
    t.string   "kind"
    t.string   "guid"
    t.string   "title"
    t.text     "summary"
    t.string   "source_url"
    t.datetime "published_at"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "teams", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "users", :force => true do |t|
    t.integer  "github_id"
    t.string   "github_handle"
    t.string   "name"
    t.string   "email"
    t.string   "location"
    t.text     "bio"
    t.string   "homepage"
    t.string   "avatar_url"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
    t.integer  "team_id"
    t.string   "role"
  end

  add_index "users", ["github_id"], :name => "index_users_on_github_id"

end