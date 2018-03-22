class AddUserToSurveyAnswers < ActiveRecord::Migration[5.1]
  def change
    add_reference :survey_answers, :user, foreign_key: true
  end
end
