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

ActiveRecord::Schema.define(version: 20130825232306) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "beings", force: true do |t|
    t.string   "surname"
    t.string   "given_name"
    t.integer  "age"
    t.boolean  "alive"
    t.string   "title"
    t.string   "gender"
    t.string   "ancestry"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "corpora", force: true do |t|
    t.string   "name"
    t.string   "url"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "corpus", force: true do |t|
    t.string   "name"
    t.string   "url"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "languages", force: true do |t|
    t.integer  "lookback"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
  end

  create_table "settlements", force: true do |t|
    t.string   "icon"
    t.string   "color"
    t.string   "name"
    t.integer  "language_id"
    t.string   "ancestry"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
