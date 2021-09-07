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

ActiveRecord::Schema.define(version: 2021_09_06_191222) do

  create_table "ciudades", force: :cascade do |t|
    t.string "imagen"
    t.string "denominacion"
    t.integer "cantHabitantes"
    t.integer "superficie"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "pais_id", null: false
    t.index ["pais_id"], name: "index_ciudades_on_pais_id"
  end

  create_table "continentes", force: :cascade do |t|
    t.string "imagen"
    t.string "denominacion"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "iconos_geograficos", force: :cascade do |t|
    t.string "imagen"
    t.string "denominacion"
    t.integer "altura"
    t.text "historia"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "ciudad_id", null: false
    t.index ["ciudad_id"], name: "index_iconos_geograficos_on_ciudad_id"
  end

  create_table "paises", force: :cascade do |t|
    t.string "imagen"
    t.string "denominacion"
    t.integer "cantHabitantes"
    t.integer "superficie"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "continente_id", null: false
    t.index ["continente_id"], name: "index_paises_on_continente_id"
  end

  add_foreign_key "ciudades", "paises"
  add_foreign_key "iconos_geograficos", "ciudades"
  add_foreign_key "paises", "continentes"
end
