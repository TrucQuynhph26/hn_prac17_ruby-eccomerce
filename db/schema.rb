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

ActiveRecord::Schema[7.0].define(version: 2018_08_01_011928) do
  create_table "books", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.integer "category_id"
    t.integer "published_year"
    t.integer "quantity"
    t.integer "access_count"
    t.string "name"
    t.string "author"
    t.string "publisher"
    t.string "description"
    t.string "image"
    t.decimal "price", precision: 10
    t.decimal "discount", precision: 10
    t.boolean "trend", default: false
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.index ["category_id"], name: "index_books_on_category_id"
    t.index ["created_at"], name: "index_books_on_created_at"
    t.index ["updated_at"], name: "index_books_on_updated_at"
  end

  create_table "cart_items", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.integer "book_id"
    t.integer "cart_id"
    t.integer "quantity"
    t.decimal "discount", precision: 10
    t.decimal "price", precision: 10
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.index ["book_id"], name: "index_cart_items_on_book_id"
    t.index ["cart_id"], name: "index_cart_items_on_cart_id"
  end

  create_table "carts", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.integer "user_id"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
  end

  create_table "categories", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "category_name"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
  end

  create_table "employees", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.integer "user_id"
    t.datetime "started_day", precision: nil
    t.string "literacy"
    t.string "work_type"
    t.string "position"
    t.decimal "salary", precision: 10
    t.boolean "manager", default: false
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.index ["user_id"], name: "index_employees_on_user_id"
  end

  create_table "orders", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.integer "user_id"
    t.integer "cart_id"
    t.integer "status"
    t.decimal "additional_charge", precision: 10
    t.decimal "total_price", precision: 10
    t.datetime "transaction_date", precision: nil
    t.string "note"
    t.string "delivery_address"
    t.string "delivery_type"
    t.string "payment_type"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.index ["cart_id"], name: "index_orders_on_cart_id"
    t.index ["user_id"], name: "index_orders_on_user_id"
  end

  create_table "users", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.string "phone_number"
    t.string "card_number"
    t.string "email"
    t.datetime "birthday", precision: nil
    t.integer "user_type", default: 0
    t.integer "gender", default: 0
    t.boolean "block", default: false
    t.boolean "deleted", default: false
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.string "password_digest"
    t.string "activation_digest"
    t.boolean "activated", default: false
    t.datetime "activated_at", precision: nil
    t.string "reset_digest"
    t.datetime "reset_sent_at", precision: nil
    t.string "remember_digest"
    t.index ["email"], name: "index_users_on_email", unique: true
  end

end
