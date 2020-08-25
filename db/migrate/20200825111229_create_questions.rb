class CreateQuestions < ActiveRecord::Migration[6.0]
  def change
    create_table :questions do |t|
      t.boolen :is_active
      t.references :quiz, null: false, foreign_key: true

      t.timestamps
    end
  end
end
