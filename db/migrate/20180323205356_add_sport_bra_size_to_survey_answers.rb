class AddSportBraSizeToSurveyAnswers < ActiveRecord::Migration[5.1]
  def change
    add_column :survey_answers, :sport_bra_size, :string
  end
end
