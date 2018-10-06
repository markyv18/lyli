class SurveyAnswer < ApplicationRecord
  belongs_to :user
  enum gender: [:men, :women]
  enum body_type: [:pear, :apple_round, :straight_no_curves, :hourglass, :slim, :normal, :athletic, :husky]
  enum ss_size: [:extra_small, :small, :medium, :large, :extra_large]
  enum ss_fit: [:extra_small, :small, :medium, :large, :extra_large]
  enum ls_size: [:extra_small, :small, :medium, :large, :extra_large], _prefix: :ls_size
  enum ls_fit: [:extra_small, :small, :medium, :large, :extra_large]
  enum vj_size: [:extra_small, :small, :medium, :large, :extra_large], _prefix: :vj_size
  enum vj_fit: [:extra_small, :small, :medium, :large, :extra_large]
  enum sprt_bra_size: [:extra_small, :small, :medium, :large, :extra_large], _prefix: :sport_bra_size
  enum sprt_bra_construction: [:underwire, :seamless, :a_bit_of_both, :no_preference]
  enum sport_bra_encapsulation: [:encapsulation, :compression, :encapsulation_and_compression, :no_preference], _prefix: :sport_bra_encapsulation
  enum sprt_bra_straps: [:crisscross, :tanktop, :racerback]
  enum sprt_bra_support: [:minimal, :medium, :a_lot], _prefix: :sprt_bra_support
  enum bad_sprt_bra_materials: [:cotton, :coolmax, :spandex, :other]
  enum sprt_bra_frequency: [:send_now, :happy_to_try, :dont_need]
  enum short_size: [:extra_small, :small, :medium, :large, :extra_large], _prefix: :short_size
  enum short_fit: [:extra_small, :small, :medium, :large, :extra_large]
  enum pant_tight_size: [:extra_small, :small, :medium, :large, :extra_large], _prefix: :pant_tight_size
  enum pant_tight_fit: [:extra_small, :small, :medium, :large, :extra_large]
  enum glove_size: [:extra_small, :small, :medium, :large, :extra_large], _prefix: :glove_size
  enum hat_style: [:trucker, :ballcap, :skiing_beanie, :running_beanie, :visor]
  enum hat_size: [:big, :avg, :small], _prefix: :hat_size
  enum top_fit: [:form_fit, :form_fit_but_loose, :little_loose, :baggy]
  enum short_form_fit: [:form_fit, :form_fit_but_loose, :little_loose, :baggy], _prefix: :short_form_fit
  enum short_length: [:short, :mid, :knee]
  enum pant_tight_form_fit: [:form_fit, :form_fit_but_loose, :little_loose, :baggy], _prefix: :pant_tight_form_fit
  enum pant_length: [:ankles, :capri, :tights, :baggy, :yoga], _prefix: :pant_length
  enum sleeve_length_issue: [:too_long, :too_short, :just_right]
  enum pant_length_issue: [:too_long, :too_short, :just_right], _prefix: :pant_length_issue
  enum sock_height: [:no_show, :low_ankle, :mid_ankle, :crew_calf, :tall, :compression]
  enum built_in_underwear: [:yes, :no]
  enum hot_or_cold: [:hot, :cold, :neither]
  enum workout_conditions: [:hot, :cold, :rain, :indoors, :seasonal], _prefix: :workout_conditions
  enum bad_colors: [:black, :brown, :green, :blue, :yellow, :orange, :red, :pink, :purple]
  enum bad_materials: [:cotton, :wool, :coolmax, :spandex], _prefix: :bad_materials
  enum short_pockets_preference: [:none, :rear_zip, :key_pocket, :no_preference], _prefix: :short_pockets_preference
  enum running_short_side_splits: [:prefer, :dislike, :either, :no_preference], _prefix: :running_short_side_splits
  enum phone_carry_place: [:no_phone, :hands, :shorts, :phone_holder]
  enum new_trend: [:yes, :no], _prefix: :new_trend
  enum upcoming_event: [:yes, :no], _prefix: :upcoming_event
  enum sport_choice_for_box: [:road, :trail, :hike, :cycling, :swimming, :gym, :tri]
  enum box_frequency: [:b4race, :per_month,  :per_quarter, :twice_yearly]
  enum ss_need: [:send_now, :happy_to_try, :dont_need], _prefix: :ss_need
  enum ls_need: [:send_now, :happy_to_try, :dont_need], _prefix: :ls_need
  enum tank_need: [:send_now, :happy_to_try, :dont_need], _prefix: :tank_need
  enum vest_need: [:send_now, :happy_to_try, :dont_need], _prefix: :vest_need
  enum jacket_need: [:send_now, :happy_to_try, :dont_need], _prefix: :jacket_need
  enum short_need: [:send_now, :happy_to_try, :dont_need], _prefix: :short_need
  enum pant_need: [:send_now, :happy_to_try, :dont_need], _prefix: :pant_need
  enum hat_need: [:send_now, :happy_to_try, :dont_need], _prefix: :hat_need
  enum glove_need: [:send_now, :happy_to_try, :dont_need], _prefix: :glove_need
  enum sock_need: [:send_now, :happy_to_try, :dont_need], _prefix: :sock_need
  enum instagram_yn: [:yes, :no], _prefix: :instagram_yn

  validates :gender,      presence: true
  validates :body_type,      presence: true
  validates :ss_size,      presence: true
  validates :ls_size,      presence: true
  validates :vj_size,      presence: true
  # validates :sprt_bra_size
  # validates :sprt_bra_construction
  # validates :sport_bra_encapsulation
  # validates :sprt_bra_straps
  # validates :sprt_bra_support
  # validates :bad_sprt_bra_materials
  # validates :sprt_bra_frequency
  validates :short_size,      presence: true
  validates :pant_tight_size,      presence: true
  # validates :glove_size,      presence: true
  # validates :hat_style,      presence: true
  # validates :hat_size,      presence: true
  validates :top_fit,      presence: true
  validates :short_form_fit,      presence: true
  validates :short_length,      presence: true
  validates :pant_tight_form_fit,      presence: true
  validates :pant_length,      presence: true
  # validates :sleeve_length_issue,      presence: true
  validates :pant_length_issue,      presence: true
  validates :sock_height,      presence: true
  # validates :built_in_underwear
  validates :hot_or_cold,      presence: true
  validates :workout_conditions,      presence: true
  validates :bad_colors,      presence: true
  validates :bad_materials,      presence: true
  validates :short_pockets_preference,      presence: true
  validates :running_short_side_splits,      presence: true
  validates :phone_carry_place,      presence: true
  validates :new_trend,      presence: true
  validates :upcoming_event,      presence: true
  validates :sport_choice_for_box,      presence: true
  validates :box_frequency,      presence: true
  validates :ss_need,      presence: true
  validates :ls_need,      presence: true
  validates :tank_need,      presence: true
  validates :vest_need,      presence: true
  validates :jacket_need,      presence: true
  validates :short_need,      presence: true
  validates :pant_need,      presence: true
  validates :hat_need,      presence: true
  validates :glove_need,      presence: true
  validates :sock_need,      presence: true
  # validates :instagram_yn
end
