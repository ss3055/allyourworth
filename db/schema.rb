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

ActiveRecord::Schema.define(version: 20160610150812) do

  create_table "budgets", force: :cascade do |t|
    t.float    "savings"
    t.float    "wants"
    t.float    "needs"
    t.float    "income"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "spends", force: :cascade do |t|
    t.string   "classification"
    t.integer  "user_id"
    t.string   "notes"
    t.string   "labels"
    t.string   "account_name"
    t.string   "category"
    t.string   "trans"
    t.float    "amount"
    t.string   "original_description"
    t.string   "description"
    t.date     "date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
