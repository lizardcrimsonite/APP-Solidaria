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

ActiveRecord::Schema[7.0].define(version: 2024_10_25_201136) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "helps", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "need_id", null: false
    t.integer "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["need_id"], name: "index_helps_on_need_id"
    t.index ["user_id"], name: "index_helps_on_user_id"
  end

  create_table "needs", force: :cascade do |t|
    t.text "description"
    t.bigint "user_id", null: false
    t.integer "status"
    t.string "location"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_needs_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.integer "role"
    t.string "location"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "helps", "needs"
  add_foreign_key "helps", "users"
  add_foreign_key "needs", "users"
end
