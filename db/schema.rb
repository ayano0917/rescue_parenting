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

ActiveRecord::Schema.define(version: 2019_12_21_060218) do

  create_table "child_minders", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "icon"
    t.string "introduction"
    t.string "child_minder_nickname"
    t.integer "gender_id"
    t.integer "years_of_experience_id"
    t.index ["email"], name: "index_child_minders_on_email", unique: true
    t.index ["reset_password_token"], name: "index_child_minders_on_reset_password_token", unique: true
  end

  create_table "children", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "parent_id"
    t.string "child_nickname", null: false
    t.integer "gender_id", null: false
    t.integer "birth_year", null: false
    t.integer "birth_month", null: false
    t.integer "birth_day", null: false
    t.string "icon"
    t.string "individuality"
    t.string "allergies", null: false
    t.string "notes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["parent_id"], name: "index_children_on_parent_id"
  end

  create_table "contact_books", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "garden_id"
    t.bigint "child_id"
    t.string "book_name", null: false
    t.integer "use_id", null: false
    t.string "contact_comment", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["child_id"], name: "index_contact_books_on_child_id"
    t.index ["garden_id"], name: "index_contact_books_on_garden_id"
  end

  create_table "garden_images", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "garden_id"
    t.string "image", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["garden_id"], name: "index_garden_images_on_garden_id"
  end

  create_table "garden_parents", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "parent_nickname", null: false
    t.integer "gender_id", null: false
    t.string "parent_icon", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "gardens", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "postal_code", null: false
    t.integer "prefecture_id", null: false
    t.integer "city_id", null: false
    t.string "detail"
    t.string "building"
    t.integer "visit_id", null: false
    t.integer "price", null: false
    t.integer "acceptable_people", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "parents", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "parent_nickname", null: false
    t.integer "gender_id", null: false
    t.string "parent_icon"
    t.string "phone", null: false
    t.index ["email"], name: "index_parents_on_email", unique: true
    t.index ["reset_password_token"], name: "index_parents_on_reset_password_token", unique: true
  end

  create_table "visit_days", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "garden_id"
    t.integer "visit_year", null: false
    t.integer "visit_month", null: false
    t.integer "visit_day", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["garden_id"], name: "index_visit_days_on_garden_id"
  end

  add_foreign_key "children", "parents"
  add_foreign_key "contact_books", "children"
  add_foreign_key "contact_books", "gardens"
  add_foreign_key "garden_images", "gardens"
  add_foreign_key "visit_days", "gardens"
end
