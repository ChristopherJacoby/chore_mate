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

ActiveRecord::Schema[7.0].define(version: 2023_07_05_134828) do
  create_table "chores", force: :cascade do |t|
    t.integer "profile_id", null: false
    t.integer "room_id"
    t.string "name"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["profile_id"], name: "index_chores_on_profile_id"
    t.index ["room_id"], name: "index_chores_on_room_id"
  end

  create_table "profiles", force: :cascade do |t|
    t.integer "chore_id"
    t.integer "user_id", null: false
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["chore_id"], name: "index_profiles_on_chore_id"
    t.index ["user_id"], name: "index_profiles_on_user_id"
  end

  create_table "rooms", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "chore_id"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["chore_id"], name: "index_rooms_on_chore_id"
    t.index ["user_id"], name: "index_rooms_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.integer "profile_id"
    t.integer "room_id"
    t.string "username"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["profile_id"], name: "index_users_on_profile_id"
    t.index ["room_id"], name: "index_users_on_room_id"
  end

  add_foreign_key "chores", "profiles"
  add_foreign_key "chores", "rooms"
  add_foreign_key "profiles", "chores"
  add_foreign_key "profiles", "users"
  add_foreign_key "rooms", "chores"
  add_foreign_key "rooms", "users"
  add_foreign_key "users", "profiles"
  add_foreign_key "users", "rooms"
end
