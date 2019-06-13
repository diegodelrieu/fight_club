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

ActiveRecord::Schema.define(version: 2019_06_11_130754) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "champions", force: :cascade do |t|
    t.string "name"
    t.integer "hp"
    t.integer "attack_damage"
    t.string "description"
    t.integer "crit_chance"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "instances", force: :cascade do |t|
    t.bigint "champion_id"
    t.bigint "weapon_id"
    t.bigint "shield_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["champion_id"], name: "index_instances_on_champion_id"
    t.index ["shield_id"], name: "index_instances_on_shield_id"
    t.index ["weapon_id"], name: "index_instances_on_weapon_id"
  end

  create_table "shields", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.integer "hp"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "weapons", force: :cascade do |t|
    t.integer "attack_damage"
    t.integer "crit_chance"
    t.string "name"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "instances", "champions"
  add_foreign_key "instances", "shields"
  add_foreign_key "instances", "weapons"
end
