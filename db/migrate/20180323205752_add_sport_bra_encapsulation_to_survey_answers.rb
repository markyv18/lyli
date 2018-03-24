class AddSportBraEncapsulationToSurveyAnswers < ActiveRecord::Migration[5.1]
  def change
    add_column :survey_answers, :sport_bra_encapsulation, :integer
  end
end
