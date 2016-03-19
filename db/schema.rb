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

ActiveRecord::Schema.define(version: 20160319221047) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "criteria", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "klasses", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "user_id"
  end

  add_index "klasses", ["user_id"], name: "index_klasses_on_user_id", using: :btree

  create_table "seating_charts", force: :cascade do |t|
    t.string   "name"
    t.integer  "klass_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "seating_charts", ["klass_id"], name: "index_seating_charts_on_klass_id", using: :btree

  create_table "student_criteria", force: :cascade do |t|
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.integer  "criteria_value"
    t.integer  "criteria_id"
    t.integer  "student_id"
  end

  add_index "student_criteria", ["criteria_id"], name: "index_student_criteria_on_criteria_id", using: :btree
  add_index "student_criteria", ["student_id"], name: "index_student_criteria_on_student_id", using: :btree

  create_table "student_seating_charts", force: :cascade do |t|
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.integer  "student_id"
    t.integer  "seating_chart_id"
  end

  add_index "student_seating_charts", ["seating_chart_id"], name: "index_student_seating_charts_on_seating_chart_id", using: :btree
  add_index "student_seating_charts", ["student_id"], name: "index_student_seating_charts_on_student_id", using: :btree

  create_table "students", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "gender"
    t.string   "ethnicity"
    t.integer  "klass_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "students", ["klass_id"], name: "index_students_on_klass_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "username"
    t.string   "password"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  add_foreign_key "students", "klasses"
end
