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

ActiveRecord::Schema[7.0].define(version: 2024_06_03_022255) do
  create_table "budgets", charset: "utf8", force: :cascade do |t|
    t.integer "housing_budget", null: false
    t.integer "food_budget", null: false
    t.integer "utilities_budget", null: false
    t.integer "communication_budget", null: false
    t.integer "daily_goods_budget", null: false
    t.integer "clothing_beauty_budget", null: false
    t.integer "entertainment_budget", null: false
    t.integer "transportation_budget", null: false
    t.integer "health_medical_budget", null: false
    t.integer "education_budget", null: false
    t.integer "insurance_budget", null: false
    t.integer "special_expenses_budget", null: false
    t.integer "total_budget", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "household_accounts", charset: "utf8", force: :cascade do |t|
    t.integer "year", null: false
    t.integer "month_id", null: false
    t.integer "housing", null: false
    t.integer "food", null: false
    t.integer "utilities", null: false
    t.integer "communication", null: false
    t.integer "daily_goods", null: false
    t.integer "clothing_beauty", null: false
    t.integer "entertainment", null: false
    t.integer "transportation", null: false
    t.integer "health_medical", null: false
    t.integer "education", null: false
    t.integer "insurance", null: false
    t.integer "special_expenses", null: false
    t.integer "total", null: false
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
