# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_07_11_215455) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "folder_files", force: :cascade do |t|
    t.string "name"
    t.string "role"
    t.bigint "folder_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["folder_id"], name: "index_folder_files_on_folder_id"
  end

  create_table "folders", force: :cascade do |t|
    t.string "name"
    t.bigint "parent_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["parent_id"], name: "index_folders_on_parent_id"
  end

  add_foreign_key "folder_files", "folders"
end