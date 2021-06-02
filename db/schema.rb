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

ActiveRecord::Schema.define(version: 2021_06_01_161903) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "citext"
  enable_extension "plpgsql"

  create_table "follows", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "following_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["following_id"], name: "index_follows_on_following_id"
    t.index ["user_id"], name: "index_follows_on_user_id"
  end

  create_table "meal_plan_recipes", force: :cascade do |t|
    t.bigint "meal_plan_id"
    t.bigint "recipe_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["meal_plan_id"], name: "index_meal_plan_recipes_on_meal_plan_id"
    t.index ["recipe_id"], name: "index_meal_plan_recipes_on_recipe_id"
  end

  create_table "meal_plans", force: :cascade do |t|
    t.bigint "user_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "title"
    t.string "unassigned"
    t.string "monday"
    t.string "tuesday"
    t.string "wednesday"
    t.string "thursday"
    t.string "friday"
    t.string "saturday"
    t.string "sunday"
    t.index ["user_id"], name: "index_meal_plans_on_user_id"
  end

  create_table "recipes", force: :cascade do |t|
    t.string "author"
    t.string "keywords"
    t.string "metadata"
    t.string "main_img"
    t.citext "title"
    t.string "description"
    t.string "ingriedients"
    t.string "instructions"
    t.string "instruction_imgs"
    t.string "tips"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["title"], name: "index_recipes_on_title", unique: true
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name", default: "Enter You First Name Here"
    t.string "last_name", default: "Enter You Last Name Here"
    t.text "bio", default: "Enter Bio Here"
    t.string "password_digest"
    t.string "username"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
