class AddQuestionToQuestions < ActiveRecord::Migration[6.0]
  def change
    add_column :questions, :question, :string
  end
end
