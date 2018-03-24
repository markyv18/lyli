class AddPantFitToSurveyAnswers < ActiveRecord::Migration[5.1]
  def change
    add_column :survey_answers, :pant_tight_form_fit, :integer
  end
end
