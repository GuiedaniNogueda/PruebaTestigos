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

ActiveRecord::Schema.define(version: 20140829014453) do

  create_table "agencies", force: true do |t|
    t.string   "agency_name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "creatives", force: true do |t|
    t.string   "creative_name"
    t.integer  "order_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "formats", force: true do |t|
    t.string   "format_name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "lines", force: true do |t|
    t.integer  "line_number"
    t.integer  "format_id"
    t.date     "start_date"
    t.date     "end_date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "orders", force: true do |t|
    t.integer  "order_number"
    t.string   "campaign"
    t.integer  "agency_id"
    t.date     "start_date"
    t.date     "end_date"
    t.integer  "site_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "orders", ["order_number"], name: "index_orders_on_order_number"

  create_table "pages", force: true do |t|
    t.integer  "creative_id"
    t.integer  "line_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sites", force: true do |t|
    t.string   "site_name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "temp_images", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "asset_file_name"
    t.string   "asset_content_type"
    t.integer  "asset_file_size"
    t.datetime "asset_updated_at"
  end

end
