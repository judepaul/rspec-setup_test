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

ActiveRecord::Schema.define(version: 20161115083602) do

  create_table "appln_infos", force: :cascade do |t|
    t.string   "appln_number", limit: 255
    t.string   "appln_type",   limit: 255
    t.string   "appln_status", limit: 255
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "company_infos", force: :cascade do |t|
    t.integer  "appln_info_id",   limit: 4
    t.string   "company_name",    limit: 255
    t.string   "company_phone",   limit: 255
    t.string   "company_address", limit: 255
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  add_index "company_infos", ["appln_info_id"], name: "index_company_infos_on_appln_info_id", using: :btree

  add_foreign_key "company_infos", "appln_infos"
end
