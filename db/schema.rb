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

ActiveRecord::Schema.define(version: 20201109234540) do

  create_table "covid_questions", force: :cascade do |t|
    t.string   "temperature"
    t.boolean  "travel"
    t.boolean  "contact"
    t.boolean  "symptoms"
    t.string   "name"
    t.integer  "store_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["store_id"], name: "index_covid_questions_on_store_id"
  end

  create_table "reports", force: :cascade do |t|
    t.integer  "store_id"
    t.datetime "date"
    t.decimal  "amount",     precision: 10, scale: 2
    t.decimal  "deposit",    precision: 10, scale: 2
    t.string   "notes"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["store_id"], name: "index_reports_on_store_id"
  end

  create_table "stores", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "number"
  end

end
