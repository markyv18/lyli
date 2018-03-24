class AddShortFitToSurveyAnswers < ActiveRecord::Migration[5.1]
  def change
    add_column :survey_answers, :short_form_fit, :integer
  end
end
