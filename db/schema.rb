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

ActiveRecord::Schema.define(version: 2019_09_02_192754) do

  create_table "cards", force: :cascade do |t|
    t.string "credit_card_number"
    t.string "cardholder_Name"
    t.date "card_expiration_date"
    t.integer "card_security_code"
    t.integer "number_shares"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "has_cards", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "card_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["card_id"], name: "index_has_cards_on_card_id"
    t.index ["user_id"], name: "index_has_cards_on_user_id"
  end

  create_table "insurances", force: :cascade do |t|
    t.datetime "start_date"
    t.datetime "end_date"
    t.integer "vehicle_id", null: false
    t.integer "tariff_id", null: false
    t.integer "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["tariff_id"], name: "index_insurances_on_tariff_id"
    t.index ["user_id"], name: "index_insurances_on_user_id"
    t.index ["vehicle_id"], name: "index_insurances_on_vehicle_id"
  end

  create_table "tariffs", force: :cascade do |t|
    t.integer "code"
    t.integer "year"
    t.string "vehicle_class"
    t.string "subtype"
    t.string "age"
    t.float "commercial_rate"
    t.float "premium_value"
    t.float "fosyga_contribution"
    t.float "subtotal_premium_and_contribution"
    t.float "runt_rate"
    t.float "total_to_pay"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.string "first_name"
    t.string "last_name"
    t.string "document_type"
    t.string "document_number"
    t.string "phone"
    t.string "auth_token"
    t.string "rol"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "vehicles", force: :cascade do |t|
    t.string "vehicle_class"
    t.string "subtype"
    t.integer "age"
    t.integer "number_passengers"
    t.integer "cylinder"
    t.integer "tons"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "has_cards", "cards"
  add_foreign_key "has_cards", "users"
  add_foreign_key "insurances", "tariffs"
  add_foreign_key "insurances", "users"
  add_foreign_key "insurances", "vehicles"
end
