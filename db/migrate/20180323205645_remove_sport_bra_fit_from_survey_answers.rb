class RemoveSportBraFitFromSurveyAnswers < ActiveRecord::Migration[5.1]
  def change
    remove_column :survey_answers, :sprt_bra_fit
  end
end
