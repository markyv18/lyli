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

ActiveRecord::Schema.define(version: 20180310010440) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "customers", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "address1"
    t.string "address2"
    t.string "city"
    t.string "state"
    t.string "zipcode"
    t.string "email", null: false
    t.string "phone_number"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_customers_on_email", unique: true
  end

  create_table "men_answers", force: :cascade do |t|
    t.integer "body_type"
    t.integer "ss_size"
    t.integer "ss_fit"
    t.integer "ls_size"
    t.integer "ls_fit"
    t.integer "vj_size"
    t.integer "vj_fit"
    t.integer "short_size"
    t.integer "short_fit"
    t.integer "pant_tight_size"
    t.integer "pant_tight_fit"
    t.integer "shoe_size"
    t.integer "glove_size"
    t.integer "hat_style"
    t.integer "hat_size"
    t.integer "top_fit"
    t.integer "short_length"
    t.integer "pant_fit"
    t.integer "quad_size"
    t.integer "pant_length"
    t.integer "sleeve_length_issue"
    t.integer "pant_length_issue"
    t.integer "sock_height"
    t.integer "built_in_underwear"
    t.integer "hot_or_cold"
    t.integer "workout_conditions"
    t.integer "bad_colors"
    t.integer "bad_materials"
    t.integer "short_pockets_preference"
    t.integer "running_short_side_splits"
    t.integer "phone_carry_place"
    t.integer "new_trend"
    t.string "new_trend_text"
    t.integer "upcoming_event"
    t.string "upcoming_event_name"
    t.string "upcoming_event_date"
    t.integer "sport_choice_for_box"
    t.integer "box_frequency"
    t.integer "ss_need"
    t.integer "ls_need"
    t.integer "tank_need"
    t.integer "vest_need"
    t.integer "jacket_need"
    t.integer "short_need"
    t.integer "pant_need"
    t.integer "hat_need"
    t.integer "glove_need"
    t.integer "sock_need"
    t.integer "instagram_yn"
    t.string "instagram"
    t.text "anything_else"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "women_answers", force: :cascade do |t|
    t.integer "body_type"
    t.integer "ss_size"
    t.integer "ss_fit"
    t.integer "ls_size"
    t.integer "ls_fit"
    t.integer "vj_size"
    t.integer "vj_fit"
    t.integer "sprt_bra_size"
    t.integer "sprt_bra_fit"
    t.integer "sprt_bra_construction"
    t.integer "sprt_bra_straps"
    t.integer "sprt_bra_support"
    t.integer "bad_sprt_bra_materials"
    t.string "bad_sprt_bra_material_name"
    t.integer "sprt_bra_frequency"
    t.integer "short_size"
    t.integer "short_fit"
    t.integer "pant_tight_size"
    t.integer "pant_tight_fit"
    t.integer "shoe_size"
    t.integer "glove_size"
    t.integer "hat_style"
    t.integer "hat_size"
    t.integer "top_fit"
    t.integer "short_length"
    t.integer "pant_fit"
    t.integer "quad_size"
    t.integer "pant_length"
    t.integer "sleeve_length_issue"
    t.integer "pant_length_issue"
    t.integer "sock_height"
    t.integer "built_in_underwear"
    t.integer "hot_or_cold"
    t.integer "workout_conditions"
    t.integer "bad_colors"
    t.integer "bad_materials"
    t.integer "short_pockets_preference"
    t.integer "running_short_side_splits"
    t.integer "phone_carry_place"
    t.integer "new_trend"
    t.string "new_trend_text"
    t.integer "upcoming_event"
    t.string "upcoming_event_name"
    t.string "upcoming_event_date"
    t.integer "sport_choice_for_box"
    t.integer "box_frequency"
    t.integer "ss_need"
    t.integer "ls_need"
    t.integer "tank_need"
    t.integer "vest_need"
    t.integer "jacket_need"
    t.integer "short_need"
    t.integer "pant_need"
    t.integer "hat_need"
    t.integer "glove_need"
    t.integer "sock_need"
    t.integer "instagram_yn"
    t.string "instagram"
    t.text "anything_else"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
