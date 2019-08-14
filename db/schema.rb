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

ActiveRecord::Schema.define(version: 2019_08_14_030407) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bands", id: false, force: :cascade do |t|
    t.integer "band_id", null: false
    t.string "band_name"
    t.integer "records_sold"
    t.index ["band_id"], name: "index_bands_on_band_id", unique: true
  end

  create_table "friends", id: false, force: :cascade do |t|
    t.integer "friend_id", null: false
    t.string "friend_name"
    t.index ["friend_id"], name: "index_friends_on_friend_id", unique: true
  end

  create_table "friends_music", id: false, force: :cascade do |t|
    t.integer "music_id", null: false
    t.integer "music_friend_id", null: false
    t.integer "music_band_id", null: false
    t.index ["music_id"], name: "index_friends_music_on_music_id", unique: true
  end

  create_table "solutions", force: :cascade do |t|
    t.string "solution"
    t.string "training"
    t.integer "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "spirit_animals", id: false, force: :cascade do |t|
    t.integer "spirit_animal_id", null: false
    t.string "spirit_animal"
    t.integer "spirit_animal_friend_id"
    t.index ["spirit_animal_id"], name: "index_spirit_animals_on_spirit_animal_id", unique: true
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "active"
  end

end
