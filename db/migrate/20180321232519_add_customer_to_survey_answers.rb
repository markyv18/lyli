class AddCustomerToSurveyAnswers < ActiveRecord::Migration[5.1]
  def change
    add_reference :survey_answers, :customer, foreign_key: true
  end
end
