class CreateWomenAnswers < ActiveRecord::Migration[5.1]
  def change
    create_table :women_answers do |t|
      t.integer :body_type
      t.integer :ss_size
      t.integer :ss_fit
      t.integer :ls_size
      t.integer :ls_fit
      t.integer :vj_size
      t.integer :vj_fit
      t.integer :sprt_bra_size
      t.integer :sprt_bra_fit
      t.integer :sprt_bra_construction
      t.integer :sprt_bra_straps
      t.integer :sprt_bra_support
      t.integer :bad_sprt_bra_materials
      t.string :bad_sprt_bra_material_name
      t.integer :sprt_bra_frequency
      t.integer :short_size
      t.integer :short_fit
      t.integer :pant_tight_size
      t.integer :pant_tight_fit
      t.integer :shoe_size
      t.integer :glove_size
      t.integer :hat_style
      t.integer :hat_size
      t.integer :top_fit
      t.integer :short_fit
      t.integer :short_length
      t.integer :pant_fit
      t.integer :quad_size
      t.integer :pant_length
      t.integer :sleeve_length_issue
      t.integer :pant_length_issue
      t.integer :sock_height
      t.integer :built_in_underwear
      t.integer :hot_or_cold
      t.integer :workout_conditions
      t.integer :bad_colors
      t.integer :bad_materials
      t.integer :short_pockets_preference
      t.integer :running_short_side_splits
      t.integer :phone_carry_place
      t.integer :new_trend
      t.string :new_trend_text
      t.integer :upcoming_event
      t.string :upcoming_event_name
      t.string :upcoming_event_date
      t.integer :sport_choice_for_box
      t.integer :box_frequency
      t.integer :ss_need
      t.integer :ls_need
      t.integer :tank_need
      t.integer :vest_need
      t.integer :jacket_need
      t.integer :short_need
      t.integer :pant_need
      t.integer :hat_need
      t.integer :glove_need
      t.integer :sock_need
      t.integer :instagram_yn
      t.string :instagram
      t.text :anything_else

      t.timestamps
    end
  end
end
