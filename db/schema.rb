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

ActiveRecord::Schema.define(version: 20151026220048) do

  create_table "categories", force: true do |t|
    t.string   "amenities"
    t.integer  "place_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "categories", ["place_id"], name: "index_categories_on_place_id"

  create_table "place_categories", force: true do |t|
    t.integer  "place_id"
    t.integer  "category_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "place_categories", ["category_id"], name: "index_place_categories_on_category_id"
  add_index "place_categories", ["place_id"], name: "index_place_categories_on_place_id"

  create_table "place_types", force: true do |t|
    t.integer  "type_id"
    t.integer  "place_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "place_types", ["place_id"], name: "index_place_types_on_place_id"
  add_index "place_types", ["type_id"], name: "index_place_types_on_type_id"

  create_table "places", force: true do |t|
    t.string   "name"
    t.string   "location"
    t.integer  "user_id"
    t.integer  "type_id"
    t.integer  "category_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "places", ["category_id"], name: "index_places_on_category_id"
  add_index "places", ["type_id"], name: "index_places_on_type_id"
  add_index "places", ["user_id"], name: "index_places_on_user_id"

  create_table "reviews", force: true do |t|
    t.text     "description"
    t.integer  "stars"
    t.integer  "user_id"
    t.integer  "place_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "reviews", ["place_id"], name: "index_reviews_on_place_id"
  add_index "reviews", ["user_id"], name: "index_reviews_on_user_id"

  create_table "types", force: true do |t|
    t.string   "gender"
    t.integer  "place_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "types", ["place_id"], name: "index_types_on_place_id"

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "handle"
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
