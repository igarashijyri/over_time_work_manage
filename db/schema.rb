# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2023_07_23_062615) do
  create_table "overtime_work_infos", force: :cascade do |t|
    t.integer "user_id", null: false
    t.string "reason"
    t.string "reject_reason"
    t.string "division"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_overtime_work_infos_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "password"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "work_members", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "overtime_work_info_id", null: false
    t.datetime "start_time"
    t.datetime "end_time"
    t.datetime "start_substitute_holiday"
    t.datetime "end_substitute_holiday"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["overtime_work_info_id"], name: "index_work_members_on_overtime_work_info_id"
    t.index ["user_id"], name: "index_work_members_on_user_id"
  end

  add_foreign_key "overtime_work_infos", "users"
  add_foreign_key "work_members", "overtime_work_infos"
  add_foreign_key "work_members", "users"
end
