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

ActiveRecord::Schema.define(version: 2018_09_21_180009) do

  create_table "challenges", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.integer "difficulty"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "githubusername"
  end

  create_table "entries", force: :cascade do |t|
    t.string "title"
    t.string "url1"
    t.string "url2"
    t.integer "score"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "challenge_id"
    t.string "githubusername"
    t.integer "creatorentry"
    t.index ["challenge_id"], name: "index_entries_on_challenge_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "avatar_url"
    t.string "email"
    t.string "uid"
    t.string "provider"
    t.string "oauth_token"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
